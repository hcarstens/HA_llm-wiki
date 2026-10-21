# frozen_string_literal: true

require "open3"
require "time"

# Build-time AEO/SEO fields. Mutates page data only (description, lastmod).
# Page body Markdown is left unchanged.
module Jekyll
  class AeoDiscovery < Generator
    priority :low

    # These files change the HTML head of every page.
    SHARED_PATHS = %w[
      _includes/head_custom.html
      _config.yml
      _plugins/aeo_discovery.rb
    ].freeze

    def generate(site)
      times = commit_times(site.source)
      shared = shared_time(site, times)
      site.pages.each do |page|
        stamp(page, site, times, shared)
        ensure_description(page) if content_page?(page)
      end
      fill_llms_full(site)
    end

    private

    def content_page?(page)
      page.path.to_s.end_with?(".md", ".markdown", ".html")
    end

    def stamp(page, site, times, shared)
      path = page.path.to_s
      page_time = times[path] || file_time(site.source, path)
      # last_modified_at is read by the sitemap and by jekyll-seo-tag.
      page.data["last_modified_at"] = [page_time, shared].compact.max || Time.now
    end

    def ensure_description(page)
      return if page.data["description"].to_s.strip != ""

      summary = plain_summary(page.content.to_s)
      page.data["description"] = summary if summary != ""
    end

    def plain_summary(markdown)
      text = markdown.gsub(/```.*?```/m, "\n")
      lines = []
      text.each_line do |line|
        stripped = line.strip
        if stripped.empty?
          break unless lines.empty?

          next
        end
        next if lines.empty? && (stripped.start_with?("#") || stripped.match?(/\A([-*_])\1{2,}\z/))

        lines << stripped.sub(/\A>\s?/, "")
      end
      clean = lines.join(" ")
      clean = clean.gsub(/!\[[^\]]*\]\([^)]*\)/, " ")
      clean = clean.gsub(/\[([^\]]+)\]\([^)]*\)/, "\\1")
      clean = clean.gsub(/\$\$?[^$]*\$\$?/, " ")
      clean = clean.gsub(/[*_`#]/, "")
      clean = clean.gsub(/\s+/, " ").strip
      truncate(clean, 160)
    end

    def truncate(text, max)
      return text if text.length <= max

      cut = text[0, max].sub(/\s+\S*\z/, "").strip
      cut = text[0, max].strip if cut.empty?
      "#{cut}..."
    end

    def fill_llms_full(site)
      target = site.pages.find { |page| page.url == "/llms-full.txt" }
      return if target.nil?

      pages = site.pages.select { |page| content_page?(page) }.sort_by { |page| page.url.to_s }
      body = +"# #{site.config["title"]}\n\n"
      body << "> Full-text export of published Markdown pages. Regenerated from the repository on every site build.\n\n"
      pages.each do |page|
        title = page.data["title"].to_s.strip
        title = page.url if title.empty?
        body << "## #{title}\n\n"
        body << "URL: #{absolute(site, page.url)}\n\n"
        body << page.content.to_s.strip
        body << "\n\n"
      end
      target.content = body
    end

    def absolute(site, url)
      origin = site.config["url"].to_s.sub(%r{/\z}, "")
      base = site.config["baseurl"].to_s.sub(%r{/\z}, "")
      path = url.to_s
      path = "/#{path}" unless path.start_with?("/")
      "#{origin}#{base}#{path}"
    end

    def shared_time(site, times)
      SHARED_PATHS.map { |path| times[path] || file_time(site.source, path) }.compact.max
    end

    def file_time(source, relative)
      full = File.join(source, relative)
      return File.mtime(full) if File.file?(full)

      nil
    end

    def commit_times(source)
      times = {}
      stdout, status = Open3.capture2(
        { "GIT_PAGER" => "cat" },
        "git", "-C", source, "log", "--format=%cI", "--name-only"
      )
      unless status.success?
        Jekyll.logger.warn("AEO:", "git log failed; lastmod falls back to file mtimes")
        return times
      end

      current = nil
      stdout.each_line do |line|
        line = line.strip
        next if line.empty?

        if line.match?(/\A\d{4}-\d{2}-\d{2}T/)
          current = parse_time(line)
        elsif current && !times.key?(line)
          times[line] = current
        end
      end
      times
    rescue StandardError => error
      Jekyll.logger.warn("AEO:", "could not read git history (#{error.message})")
      {}
    end

    def parse_time(value)
      Time.parse(value)
    rescue ArgumentError
      nil
    end
  end
end
