require 'sinatra'
require 'compass'
require 'haml'

configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.rb'))
end

get '/' do
  haml :home
end

get '/flights' do
  haml :flights
end

get '/hotels' do
  haml :hotels
end

get '/cars' do
  haml :cars
end

get '/deals' do
  haml :deals
end

