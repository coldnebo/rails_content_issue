
module ApplicationHelper

  # example
  def working_helper
    %{alert('hello');}.html_safe
  end

  def broken_helper
    Tracer.on
    output = controller.render_to_string("my_javascript", layout: false)
    Tracer.off
    output.html_safe
    #controller.isolated_render_to_string("my_javascript", layout: false).html_safe
  end

end
