require 'spec_helper'

describe Weather do

  context 'requiring the current weather from a single city works correctly' do

    before(:all) do
      @weather = Weather.new.single_city_weather_superclass
      @weather.get_single_city_weather('London')
    end

    it "All results should respond as a hash" do
      expect(@weather.get_city_results).to be_kind_of(Hash)
    end

    it "Weather should respond as a hash of results" do
      expect(@weather.get_single_weather).to be_kind_of(Hash)
    end


  end



end
