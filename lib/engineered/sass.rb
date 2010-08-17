require 'active_support/core_ext/module'

module Engineered
  module Sass
    class << self
      attr_accessor_with_default :css_path, 'app/stylesheets'
      attr_accessor_with_default :compiled_css_path, 'public/stylesheets/compiled'

      def configure!
        # we require sass/plugin later because it requires rails initialization
        require 'sass/plugin'
        clean_defaults
        add_css_path_to_app
        add_css_path_to_engines
      end

      private

      def clean_defaults
        ::Sass::Plugin.remove_template_location('./public/stylesheets/sass', './public/stylesheets')
      end

      def add_css_path_to_app
        ::Sass::Plugin.add_template_location(
          File.expand_path(css_path),
          File.expand_path(compiled_css_path))
      end

      def add_css_path_to_engines
        Engineered.engines.each do |engine|
          ::Sass::Plugin.add_template_location(
            File.expand_path(css_path, engine.root),
            File.expand_path(compiled_css_path))
        end
      end
    end

  end
end
