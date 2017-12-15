require 'spec_helper'

describe Weather do

  context 'requiring the current weather from a single city works correctly' do

    before(:all) do
      @weather = Weather.new.single_city_weather_superclass
      @weather.get_single_city_weather('London')
    end

    it "All results from this city should respond as a hash" do
      expect(@weather.get_city_results).to be_kind_of(Hash)
    end

    it "Coordinates should respond as a hash" do
      expect(@weather.get_coordinates).to be_kind_of(Hash)
    end

    it "Weather should respond as a hash of results" do
      expect(@weather.get_single_weather).to be_kind_of(Hash)
    end

    it "base should respond has a string" do
      expect(@weather.get_base).to be_kind_of(String)
    end

    it "main should respond has a hash" do
      expect(@weather.get_main).to be_kind_of(Hash)
    end

    it "visibility should respond has an integer" do
      expect(@weather.get_visibility).to be_kind_of(Integer)
    end

    it "wind should respond has a hash" do
      expect(@weather.get_wind).to be_kind_of(Hash)
    end

    it "clouds should respond has a hash" do
      expect(@weather.get_clouds).to be_kind_of(Hash)
    end

    it "dt should respond as an integer" do
      expect(@weather.get_dt).to be_kind_of(Integer)
    end

    it "sys should respond as a hash" do
      expect(@weather.get_sys).to be_kind_of(Hash)
    end

    it "id should respond as an integer" do
      expect(@weather.get_id).to be_kind_of(Integer)
    end

    it "name should respond as a String" do
      expect(@weather.get_name).to be_kind_of(String)
    end

    it "cod should respond as an Integer" do
      expect(@weather.get_code).to be_kind_of(Integer)
    end

  end



end
