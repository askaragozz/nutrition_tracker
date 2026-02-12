module ApplicationHelper
  def nav_link_class(path)
    base = "nav-link"
    current_page?(path) || (controller_name == "diaries") ? "#{base} active" : base
  end


  def bootstrap_flash_class(type)
    case type.to_sym
    when :notice then "success"
    when :alert  then "danger"
    else "secondary"
    end
  end
end
