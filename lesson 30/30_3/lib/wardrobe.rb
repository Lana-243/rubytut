require_relative 'garment'

class Wardrobe
  def self.clothes_list(filenames)
    filenames.map { |filename| File.readlines(filename, chomp: true) }
  end

  attr_reader :clothes

  def initialize(filenames)
    wardrobe = Wardrobe.clothes_list(filenames)
    @clothes = wardrobe.map { |title, type, temperature_range| Garment.new(title, type, temperature_range) }
  end

  def garment_types
    @clothes.map { |item| item.type }.uniq.join(', ')
  end

  def garments_of_type(type)
    @clothes.select { |item| item.type == type }.map(&:title).join(', ')
  end

  def suitable_garments(temperature)
    @clothes
      .select { |item| item.suitable_for_weather?(temperature) }
      .join("\n")
  end

  def clothes_by_type
    @clothes
      .sort_by(&:type)
      .map(&:to_s)
      .join("\n")
  end
end
