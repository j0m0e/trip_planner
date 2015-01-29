class ItinerariesController < ApplicationController

def get_weather
	weather_params = params[:weather_params].split('+')
	dates = weather_params[0] 
	city = weather_params[1]
	state = weather_params[2]
	result = Weather.search(dates, city, state)
	render json: result
end



end




