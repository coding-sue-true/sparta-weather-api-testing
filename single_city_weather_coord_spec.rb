require 'spec_helper'

describe Weather do

  context 'requiring the current weather from a single city by Coordinates works correctly' do

    before(:all) do
      @weather_coord = Weather.new.single_city_weather_coord
      @weather_coord.get_single_city_weather_by_coord(12,-5)
    end

    it "All results from this city should respond as a hash" do
      expect(@weather_coord.get_city_results).to be_kind_of(Hash)
    end

    it "Coordinates should respond as a hash" do
      expect(@weather_coord.get_coordinates).to be_kind_of(Hash)
    end

    it "Longitude Coordinates should be between -180 and 180 degrees" do
      expect(@weather_coord.get_coord_lon).to be_between(-180,180)
    end

    it "Latitude Coordinates should be between -90 and 90 degrees" do
      expect(@weather_coord.get_coord_lat).to be_between(-90,90)
    end

    it "Weather should respond as a hash of results" do
      expect(@weather_coord.get_single_weather).to be_kind_of(Hash)
    end

    it "Weather id should be an integer" do
      expect(@weather_coord.get_single_weather_id).to be_kind_of(Integer)
    end

    it "Weather main should be a string" do
      expect(@weather_coord.get_single_weather_main).to be_kind_of(String)
    end

    it "Weather description should be a string" do
      expect(@weather_coord.get_single_weather_description).to be_kind_of(String)
    end

    it "Weather icon should be a string and 3 characters long" do
      expect(@weather_coord.get_single_weather_icon).to be_kind_of(String)
      expect(@weather_coord.get_single_weather_icon.length).to eq 3
    end

    it "base should respond has a string" do
      expect(@weather_coord.get_base).to be_kind_of(String)
    end

    it "main should respond has a hash" do
      expect(@weather_coord.get_main).to be_kind_of(Hash)
    end

    it "Main Temp should respond as a Float" do
      expect(@weather_coord.get_main_temp).to be_kind_of(Float)
    end

    it "Main Pressure should respond as an Integer" do
      expect(@weather_coord.get_main_pressure).to be_kind_of(Integer)
    end

    it "Main Humidity should respond as an Integer" do
      expect(@weather_coord.get_main_humidity).to be_kind_of(Integer)
    end

    it "Main temp_min should respond as a Float" do
      expect(@weather_coord.get_main_temp_min).to be_kind_of(Float)
    end

    it "Main temp_max should respond as a Float" do
      expect(@weather_coord.get_main_temp_max).to be_kind_of(Float)
    end

    it "visibility should respond has an integer" do
      expect(@weather_coord.get_visibility).to be_kind_of(Integer)
    end

    it "wind should respond has a hash" do
      expect(@weather_coord.get_wind).to be_kind_of(Hash)
    end

    it "wind speed should respond as a Float" do
      expect(@weather_coord.get_wind_speed).to be_nil.or be_kind_of(Float).or be_kind_of(Integer)
    end

    it "wind deg should respond as an Integer" do
      expect(@weather_coord.get_wind_deg).to be_nil.or be_kind_of(Float).or be_kind_of(Integer)
    end

    it "clouds should respond as a hash" do
      expect(@weather_coord.get_clouds).to be_kind_of(Hash)
    end

    it "clouds all should respond as an Integer" do
      expect(@weather_coord.get_clouds_all).to be_kind_of(Integer)
    end

    it "dt should respond as an integer" do
      expect(@weather_coord.get_dt).to be_kind_of(Integer)
    end

    it "sys should respond as a hash" do
      expect(@weather_coord.get_sys).to be_kind_of(Hash)
    end

    it "sys type should respond as a Integer" do
      expect(@weather_coord.get_sys_type).to be_kind_of(Integer)
    end

    it "sys id should respond as an integer" do
      expect(@weather_coord.get_sys_id).to be_kind_of(Integer)
    end

    it "sys message should respond as a Float" do
      expect(@weather_coord.get_sys_message).to be_kind_of(Float)
    end

    it "sys message should respond as a Float" do
      expect(@weather_coord.get_sys_message).to be_kind_of(Float)
    end

    it "sys country should respond as a String" do
      expect(@weather_coord.get_sys_country).to be_kind_of(String)
    end

    it "sys sunrise should respond as an Integer" do
      expect(@weather_coord.get_sys_sunrise).to be_kind_of(Integer)
    end

    it "sys sunset should respond as an Integer" do
      expect(@weather_coord.get_sys_sunset).to be_kind_of(Integer)
    end

    it "id should respond as an integer" do
      expect(@weather_coord.get_id).to be_kind_of(Integer)
    end

    it "name should respond as a String" do
      expect(@weather_coord.get_name).to be_kind_of(String)
    end

    it "cod should respond as an Integer" do
      expect(@weather_coord.get_code).to be_kind_of(Integer)
    end

  end

end
