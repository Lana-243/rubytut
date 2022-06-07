require 'rspec'

require 'garment'

describe Garment do
  let(:garment) do
    Garment.new("Long sleeved blouse", "Upper body garment", "(+10, +25)")
  end

  describe '#suitable_for_weather?' do
    it 'should return true for 15' do
      garment.suitable_for_weather?(15).to eq true
    end
  end
end
