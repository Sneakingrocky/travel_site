require 'sinatra'
require 'compass'
require 'haml'

configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.rb'))
end

get '/' do
  haml :home
end
