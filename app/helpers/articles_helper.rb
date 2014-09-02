module ArticlesHelper
  def format_links(links)
    content_tag :ul do
      links.split("\n").map do |link|
        link.strip!
        concat content_tag :li, link_to(link, link, target: '_blank', rel: 'nofollow noindex')
      end
    end
  end
end
