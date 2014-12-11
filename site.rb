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
  @flights_tab = true
  haml :flights
end

get '/flight_results' do
  @flights_tab = true
    haml :flight_results
end    

get '/hotels' do
  @hotels_tab = true
  haml :hotels
end

get '/hotel_results' do
  @hotels_tab = true
  haml :hotel_results
end  

get '/cars' do
  @cars_tab = true
  haml :cars
end

get '/car_results' do
  @cars_tab = true
  haml :car_results
end  

get '/deals' do
  @deals_tab = true
  haml :deals
end


