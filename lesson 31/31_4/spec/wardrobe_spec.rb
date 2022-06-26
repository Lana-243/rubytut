# frozen_string_literal: true

require 'rspec'

require 'garment'

require 'wardrobe'

describe Wardrobe do
  let(:wardrobe) do
    filenames = Dir[File.join(__dir__, 'fixtures', '*.txt')]
    Wardrobe.from_files(filenames)
  end

  describe '#self.from_files' do
    it 'should return 2 instances' do
      expect(wardrobe.clothes.size).to eq(2)
    end

    it 'should return instance of Garment' do
      expect(wardrobe.clothes.first).to be_an_instance_of(Garment)
    end

    it 'should return correct attributes of clothes' do
      expect(wardrobe.clothes).to match_array([
        an_object_having_attributes(title: 'Long sleeved blouse', type: 'Upper body garment', temperature_min: 10,
                                    temperature_max: +25),
        an_object_having_attributes(title: 'Sweater', type: 'Tops', temperature_min: -20, temperature_max: 0)
      ])
    end
  end

  describe '#suitable_garments' do
    it 'should return correct clothes for 15' do
      expect(wardrobe.suitable_garments(15).first.title).to eq('Long sleeved blouse')
    end

    it 'should return correct clothes for +15' do
      expect(wardrobe.suitable_garments(15).first.title).to eq('Long sleeved blouse')
    end

    it 'should return correct clothes for -10' do
      expect(wardrobe.suitable_garments(-10).first.title).to eq('Sweater')
    end

    it 'should return answer that there is nothing for -21' do
      expect(wardrobe.suitable_garments(-21)).to eq('There are no suitable garments for this weather')
    end
  end
end
