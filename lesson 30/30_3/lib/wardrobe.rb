require_relative 'garment'

class Wardrobe
  def self.from_files(filenames)
    wardrobe = filenames.map { |filename| File.readlines(filename, chomp: true) }
    self.new(wardrobe)
  end

  attr_reader :clothes

  def initialize(wardrobe)
    @clothes = wardrobe.map { |title, type, temperature_range| Garment.new(title, type, temperature_range) }
  end

  def suitable_garments(temperature)
    @clothes
      .select { |item| item.suitable_for_weather?(temperature) }
      .shuffle
      .uniq(&:type)
  end
end
