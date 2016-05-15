require 'spec_helper.rb'

describe 'Weather Hash' do 

  before(:each) do
    @nyc_weather = {
      :city => "New York",
      :description => "Partly Cloudy",
      :temperature_farenheit => 75,
      :temperature_celcius => 19.1
    }

    @sf_weather = {
      :city => "San Francisco",
      :description => "Sunny",
      :temperature_farenheit => 58.3,
      :temperature_celcius => 14.6
    }
  end

  describe '#location' do
    it "returns the location from the weather hash" do
      expect(location(@nyc_weather)).to eq("New York")
      expect(location(@sf_weather)).to eq("San Francisco")
    end
  end

  describe '#description' do
    it "returns the description from the weather hash" do

      expect(description(@nyc_weather)).to eq("Partly Cloudy")

      expect(description(@sf_weather)).to eq("Sunny")
    end
  end

  describe '#weather_report' do
    it "returns a weather report as a string" do

      expect(weather_report(@nyc_weather)).to eq("The weather in New York is Partly Cloudy. The temperature is 75 degrees Farenheit." )
    end
  end
   describe '#city_weather_info' do
    it "uses the each method to iterate over all the information for a city and returns a string 'The [key] is [value]'" do
      expect(city_weather_info(@nyc_weather)).to eq(@nyc_weather)
    end
  end

  describe '#convert_temp' do
    it "accesses the Farenheit temperature from the hash and returns it as Celsius" do

      expect(convert_temp(@nyc_weather)).to eq(23.89)
    end
  end



  
end