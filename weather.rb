# Your methods should take in a hash as an argument - here's an example of what the hash will look like - the methods should take this hash as an argument and return the desired output.

# weather = {
#   :city => "New York",
#   :description => "Partly Cloudy",
#   :temperature_farenheit => 66.3
# }

# 1. Complete the method below called location, that accepts a hash called weather as an argument so that it returns the value of city from the weather hash.
def location(weather)
  weather[:city]
end

# 2. Complete the method description so it returns the description from the weather hash.
def description(weather)
  weather[:description]
end

# 3. Using the methods above and string interpolation, update the method below so that it returns a string that describes the current weather - for example: "The weather in New York is Partly Cloudy. The temperature is 66.1 degrees Farenheit."
def weather_report(weather)
  "The weather in #{location(weather)} is #{description(weather)}. The temperature is #{weather[:temperature_farenheit]} degrees Farenheit."
end

# BONUS:  Write a method that takes in the weather hash as an argument and converts the farenheit temperature to celcius. Have the method round your answer to two decimal places. Is there a method we can use to round in Ruby?

# Hint - how can we find the algorithm to convert Farenheit to Celsius?

def convert_temp(weather)
  ((weather[:temperature_farenheit] - 32.0) * (5.0/9.0)).round(2)
end
