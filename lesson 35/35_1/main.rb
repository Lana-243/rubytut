require 'uri'
require 'net/http'
require 'rexml/document'
require_relative 'forecast'

# CLOUDINESS = %w[Ясно Малооблачно Облачно Пасмурно].freeze
#
# uri = URI.parse('https://www.meteoservice.ru/en/export/gismeteo?point=37')
#
# response = Net::HTTP.get_response(uri)
#
# doc = REXML::Document.new(response.body)
#
# city_name = URI.decode_www_form_component(
#   doc.root.elements['REPORT/TOWN'].attributes['sname']
# )
#
# forecast = doc.root.elements['REPORT/TOWN/FORECAST']
#
# min_temp = forecast.elements['TEMPERATURE'].attributes['min']
# max_temp = forecast.elements['TEMPERATURE'].attributes['max']
#
# max_wind = forecast.elements['WIND'].attributes['max']
#
# clouds_index = forecast.elements['PHENOMENA'].attributes['cloudiness'].to_i
# clouds = CLOUDINESS[clouds_index]
#
# puts city_name
# puts "Температура — от #{min_temp} до #{max_temp} С"
# puts "Ветер #{max_wind} м/с"
# puts clouds
#
a = Forecast.forecast_reader('https://www.meteoservice.ru/en/export/gismeteo?point=37')
puts a.city_name
