require 'tracer'

class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

  # adapted from Rails spelunking with pry...
  # def isolated_render_to_string(*args, &block)
  #   options = _normalize_render(*args, &block)
  #   # render_to_body(options)

  # end
  
end
