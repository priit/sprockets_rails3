require 'sprockets_rails3'
require 'rails'
require 'rack/sprockets'

module SprocketsRails3
 class Railtie < Rails::Railtie
   initializer 'sprockets_rails3' do |app|
     app.middleware.use Rack::Sprockets
   end
 end
end
