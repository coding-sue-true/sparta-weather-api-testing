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

  def get_coordinates
    get_city_results['coord']
  end

  def get_coord_lon
    get_coordinates['lon']
  end

  def get_coord_lat
    get_coordinates['lat']
  end

  def get_single_weather
    get_city_results['weather'][0]
  end

  def get_base
    get_city_results['base']
  end

  def get_main
    get_city_results['main']
  end

  def get_visibility
    get_city_results['visibility']
  end

  def get_wind
    get_city_results['wind']
  end

  def get_clouds
    get_city_results['clouds']
  end

  def get_dt
    get_city_results['dt']
  end

  def get_sys
    get_city_results['sys']
  end

  def get_id
    get_city_results['id']
  end

  def get_name
    get_city_results['name']
  end

  def get_code
    get_city_results['cod']
  end
end


x = SingleCityWeather.new

puts x.get_single_city_weather('Bristol').class
