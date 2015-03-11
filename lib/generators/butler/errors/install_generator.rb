require 'rails/generators/resource_helpers'

module Butler
  module Errors
    class InstallGenerator < Rails::Generators::Base

      def add_application_config
        application "config.exceptions_app = self.routes"
      end

      def remove_static_error_pages
        remove_file "public/500.html"
        remove_file "public/404.html"
        remove_file "public/422.html"
      end
    end
  end
end
