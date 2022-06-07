class Garment1

  attr_reader :title, :type, :temperature_min, :temperature_max

  def initialize(title, type, temperature_range)
    @title = title
    @type = type
    temperature_array = temperature_range.delete('( )+').split(',')
    @temperature_min = temperature_array[0].to_i
    @temperature_max = temperature_array[1].to_i
  end

  def suitable_for_weather?(temperature)
    (temperature >= @temperature_min) && (temperature <= @temperature_max)
  end

  def to_s
    "#{type}: #{title} #{temperature_min}..#{temperature_max}"
  end
end
