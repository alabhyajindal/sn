module ApplicationHelper

  def navigation_links
    [
      { name: 'new', path: '#' },
      { name: 'threads', path: '#' },
      { name: 'past', path: '#' },
      { name: 'comments', path: '#' },
      { name: 'ask', path: '#' },
      { name: 'show', path: '#' },
      { name: 'jobs', path: '#' },
      { name: 'submit', path: new_post_path }
    ]
  end
  
end
