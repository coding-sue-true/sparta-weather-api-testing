require 'yaml'
require 'httparty'

class CityById

  def initialize
    random_id = YAML.load_file('lib/random_data/city_id.yml')
    @random_city = random_id[rand(random_id.length)]
  end

  def random_city
    @random_city
  end


end
