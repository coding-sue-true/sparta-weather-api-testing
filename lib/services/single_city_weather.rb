require 'httparty'
require 'json'
require 'faker'

class SingleCityWeather
  include HTTParty

  base_uri 'https://api.openweathermap.org/data/2.5'

  def get_single_city_weather(city)
    @single_city_weather = JSON.parse(self.class.get("/weather?q=#{city},uk&appid=a40f462c465768e7ad04d60cac8f970e").body)
  end

  def get_city_results
    @single_city_weather
  end

  def get_single_weather
    @single_city_weather['weather'][0]
  end

end


x = SingleCityWeather.new

puts x.get_single_city_weather('Bristol').class
