require_relative 'services/single_city_weather.rb'
require_relative 'services/multiple_city_weather.rb'

class Weather

  def single_city_weather_superclass
    SingleCityWeather.new
  end

  def multi_city_weather_superclass
    MultipleCityWeather.new
  end

end
