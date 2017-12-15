require 'spec_helper'

describe Weather do

  context 'requiring the current weather from a single city works correctly' do

    before(:all) do
      @weather = Weather.new.single_city_weather
    end




  end



end
