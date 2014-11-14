
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

  def all_content_for(name)
    # rails3 apparently has a bunch of view_flows lying around that aren't merged
    # probably that f-ing nested view caching
    # anyway, this is a horrible hack, but it gets at the keys we set
    value = ""
    ObjectSpace.each_object(ActionView::OutputFlow){ |o|
      if o.content.has_key?(name) 
        value = o.content[name] unless o.content[name].blank? 
      end
    }
    value
  end

end
