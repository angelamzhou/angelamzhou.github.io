require 'feedjira'
require 'httparty'
require 'jekyll'

module ExternalPosts
  class ExternalPostsGenerator < Jekyll::Generator
    safe true
    priority :high

    def generate(site)
      return if site.config['external_sources'].nil?

      site.config['external_sources'].each do |src|
        begin
          Jekyll.logger.info "ExternalPosts:", "Fetching external posts from #{src['name']}"
          response = HTTParty.get(src['rss_url'], timeout: 10)
          feed = Feedjira.parse(response.body)

          unless feed&.respond_to?(:entries)
            Jekyll.logger.warn "ExternalPosts:", "Skipping #{src['name']} because the feed could not be parsed"
            next
          end

          feed.entries.each do |e|
            Jekyll.logger.info "ExternalPosts:", "...fetching #{e.url}"
            slug = e.title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
            path = site.in_source_dir("_posts/#{slug}.md")
            doc = Jekyll::Document.new(
              path, { :site => site, :collection => site.collections['posts'] }
            )
            doc.data['external_source'] = src['name']
            doc.data['feed_content'] = e.content
            doc.data['title'] = e.title.to_s
            doc.data['description'] = e.summary
            doc.data['date'] = e.published
            doc.data['redirect'] = e.url
            site.collections['posts'].docs << doc
          end
        rescue StandardError => e
          Jekyll.logger.warn(
            "ExternalPosts:",
            "Skipping #{src['name']} (#{src['rss_url']}): #{e.class}: #{e.message}"
          )
        end
      end
    end
  end

end
