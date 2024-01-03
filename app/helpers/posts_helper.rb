module PostsHelper
  def display_url(url)
    uri = URI.parse(url)
    uri.host.sub(/\Awww\./, '')
  end
end
