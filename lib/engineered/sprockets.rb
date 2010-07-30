require 'active_support/core_ext/module'

module Engineered
  module Sprockets
    class << self
      attr_accessor_with_default :hosted_at, '/javascripts/compiled'
      attr_accessor_with_default :load_path, 'app/javascripts'

      def config
        {
          :hosted_at => hosted_at,
          :load_path => load_path_with_engines,
          :expand_paths => false
        }
      end

      private

      def load_path_with_engines
        path = [File.expand_path(load_path)] # app path added
        Engineered.engines.each do |eng|
          path << File.expand_path(load_path, eng.root)
        end
        path
      end
    end
  end
end
