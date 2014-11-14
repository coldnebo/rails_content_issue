
module ApplicationHelper

  # example
  def working_helper
    %{alert('hello');}.html_safe
  end

  def broken_helper
    output = controller.render_to_string("my_javascript", layout: false)
    output.html_safe
    #controller.isolated_render_to_string("my_javascript", layout: false).html_safe
  end

end
