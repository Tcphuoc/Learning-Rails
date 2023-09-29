module ApplicationHelper
  def full_title(title)
    return 'Shopping App' if title.empty?
    title
  end
end
