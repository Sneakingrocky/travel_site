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

get '/flight_results' do
    haml :flight_results
end    

get '/hotels' do
  haml :hotels
end

get '/hotel_results' do
  haml :hotel_results
end  

get '/cars' do
  haml :cars
end

get '/car_results' do
  haml :car_results
end  

get '/deals' do
  haml :deals
end


