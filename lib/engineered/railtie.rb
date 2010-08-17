require 'engineered'
require 'rails'
require 'rack/sprockets'

module Engineered
 class Railtie < Rails::Railtie

   # Engines are not included by default.
   # Set 'engineered' value to true on at your engine config.
   #
   # == Examples:
   #
   #   Engine < Rails::Engine
   #     config.engineered = true
   #   end
   #
   #
   initializer 'engineered.include_engines', :before => :load_config_initializers do |app|
     app.railties.engines.each do |eng|
       Engineered.engines << eng if eng.config.engineered rescue NoMethodError
     end
   end

   initializer 'engineered.configure_sass' do
     Engineered::Sass.configure!
   end

   initializer 'engineered.use_sprockets' do |app|
     app.middleware.use Rack::Sprockets, Engineered::Sprockets.config
   end
 end
end
