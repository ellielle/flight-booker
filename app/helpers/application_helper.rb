module ApplicationHelper
  def title_helper(page_title = '')
    base_title = "Simple Flights"
    if page_title.empty?
      base_title
    else
      "#{page_title} - #{base_title}"
    end
  end
end
