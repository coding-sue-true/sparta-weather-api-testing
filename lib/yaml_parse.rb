require 'yaml'

class CityById

  def initialize
    @city_id = YAML.load_file('./city_id.yml')
  end

  def city_id
    puts @city_id
  end

end

id = CityById.new
id.city_id
# yaml.print_environment
# yaml.print_nested
