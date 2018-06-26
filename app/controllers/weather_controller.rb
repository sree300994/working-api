class WeatherController < ApplicationController
  def search
  	if params[:name]
  		response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{params[:name]}&APPID=3ae18949940ecdb295e65ef1a2186a0f&units=metric")
  		@result = JSON.parse(response.body)
  	end
  end
end
