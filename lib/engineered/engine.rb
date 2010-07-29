require 'rails'
require 'sass'
require 'rack/sprockets'

module Engineered
 class Engine < Rails::Engine

   config.app_middleware.use Rack::Sprockets, 
     :hosted_at => '/javascripts/compiled'

   # include sass templates to master app
   ::Sass::Plugin.add_template_location(
     File.expand_path('app/stylesheets', root),
     File.expand_path('public/stylesheets/compiled'))
 end
end
