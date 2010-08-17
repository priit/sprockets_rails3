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

   initializer 'engineered.include_haml' do
     # require haml, thus no need explicitly include haml gem into master app's Gemfile
     # probably review it when haml/sass splits into seperate gems
     require 'haml' 
   end

   initializer 'engineered.configure_sass' do
     Engineered::Sass.configure!
   end

   initializer 'engineered.use_sprockets' do |app|
     app.middleware.use Rack::Sprockets, Engineered::Sprockets.config
   end
 end
end
