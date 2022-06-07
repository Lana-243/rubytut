require_relative 'garment'

class Wardrobe
  def self.from_files(filenames)
    wardrobe = filenames.map { |filename| File.readlines(filename, chomp: true) }
    clothes = wardrobe.map { |title, type, temperature_range| Garment.new(title, type, temperature_range) }
    self.new(clothes)
  end

  attr_reader :clothes

  def initialize(clothes)
    @clothes = clothes
  end

  def suitable_garments(temperature)
    @clothes
      .select { |item| item.suitable_for_weather?(temperature) }
      .shuffle
      .uniq(&:type)
  end
end
