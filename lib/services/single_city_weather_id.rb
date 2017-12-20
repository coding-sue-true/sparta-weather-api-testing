require 'httparty'
require 'json'
require 'faker'
require_relative '../random_data/random_city_id.rb'

class SingleCityWeatherById
  include HTTParty

  base_uri 'https://api.openweathermap.org/data/2.5'

  def get_single_city_weather_by_id
    @single_city_weather_id = JSON.parse(self.class.get("/weather?id=#{get_random_city}&appid=a40f462c465768e7ad04d60cac8f970e").body)
  end

  def get_random_city
    x = CityById.new
    x.random_city
  end

  # def get_city_results
  #   @single_city_weather_id
  # end

  def get_coordinates
    get_random_city['coord']
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

  def get_single_weather_id
    get_single_weather['id']
  end

  def get_single_weather_main
    get_single_weather['main']
  end

  def get_single_weather_description
    get_single_weather['description']
  end

  def get_single_weather_icon
    get_single_weather['icon']
  end

  def get_base
    get_city_results['base']
  end

  def get_main
    get_city_results['main']
  end

  def get_main_temp
    get_main['temp']
  end

  def get_main_pressure
    get_main['pressure']
  end

  def get_main_humidity
    get_main['humidity']
  end

  def get_main_temp_min
    get_main['temp_min']
  end

  def get_main_temp_max
    get_main['temp_max']
  end

  def get_visibility
    get_city_results['visibility']
  end

  def get_wind
    get_city_results['wind']
  end

  def get_wind_speed
    get_wind['speed']
  end

  def get_wind_deg
    get_wind['deg']
  end

  def get_clouds
    get_city_results['clouds']
  end

  def get_clouds_all
    get_clouds['all']
  end

  def get_dt
    get_city_results['dt']
  end

  def get_sys
    get_city_results['sys']
  end

  def get_sys_type
    get_sys['type']
  end

  def get_sys_id
    get_sys['id']
  end

  def get_sys_message
    get_sys['message']
  end

  def get_sys_country
    get_sys['country']
  end

  def get_sys_sunrise
    get_sys['sunrise']
  end

  def get_sys_sunset
      get_sys['sunset']
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

x = SingleCityWeatherById.new
puts x.get_single_city_weather_by_id
