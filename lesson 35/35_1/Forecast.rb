class Forecast

  CLOUDINESS = %w[Ясно Малооблачно Облачно Пасмурно].freeze
  def self.forecast_reader(url)
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    doc = REXML::Document.new(response.body)

    new.(doc)
  end

  def initialize

  end


  doc = REXML::Document.new(response.body)



  def city_name
    URI.decode_www_form_component(
    @doc.root.elements['REPORT/TOWN'].attributes['sname']
  )
end
