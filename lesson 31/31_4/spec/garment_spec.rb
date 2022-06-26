require 'rspec'

require 'garment'

describe Garment do
  let(:garment) do
    Garment.new("Long sleeved blouse", "Upper body garment", "(+10, +25)")
  end

  describe '#suitable_for_weather?' do
    it 'should return true for 15' do
      expect(garment.suitable_for_weather?(15)).to be true
    end
  end

  describe '#to_s?' do
    it 'should return Upper body garment: Long sleeved blouse: 10..25' do
      expect(garment.to_s).to eq "Upper body garment: Long sleeved blouse 10..25"
    end
  end
end
