module ApplicationHelper

  # example
  def working_helper
    %{alert('hello');}.html_safe
  end

  def broken_helper
    controller.render_to_string("my_javascript", layout: false).html_safe
  end

end
