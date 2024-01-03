module PostsHelper

  def display_url(url)
    return false if url.nil?

    uri = URI.parse(url)
    uri.host.sub(/\Awww\./, '')
  end
  
end
