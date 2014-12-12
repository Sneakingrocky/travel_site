require 'sinatra'
require 'compass'

configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.rb'))
end

get '/' do
  erb :home
end

get '/flights' do
  @flights_tab = true
  erb :flights
end

get '/flight_results' do
  @flights_tab = true
    erb :flight_results
end    

get '/hotels' do
  @hotels_tab = true
  erb :hotels
end

get '/hotel_results' do
  @hotels_tab = true
  erb :hotel_results
end  

get '/cars' do
  @cars_tab = true
  erb :cars
end

get '/car_results' do
  @cars_tab = true
  erb :car_results
end  

get '/deals' do
  @deals_tab = true
  erb :deals
end


