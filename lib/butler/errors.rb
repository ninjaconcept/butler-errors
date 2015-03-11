require "butler/errors/version"
require "sass-rails"
require "haml-rails"

module Butler
  module Errors
    class Engine < ::Rails::Engine
      isolate_namespace Butler::Errors
    end
  end
end
