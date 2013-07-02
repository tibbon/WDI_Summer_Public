require 'pry'
require 'rainbow'
require 'yahoo_weatherman'

class Weather
  def Weather.get(zip) # def self.get(zip)
    begin
      client = Weatherman::Client.new
      temperature = client.lookup_by_location(zip.to_s).condition['temp']
    rescue
      temperature = "oops something went wrong. look outside."
    end
    if temperature > 20
      puts temperature.to_s.color(:red)
    else
      puts temperature.to_s.color(:green)
    end
  end
end

binding.pry