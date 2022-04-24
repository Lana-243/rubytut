require 'rspec'

# подключаем склонятор
require 'credit_request.rb'

# так в RSpec начинается сценарий для конкретного класса/модуля/метода
describe CreditRequest do
  # внутри идет набор кейсов внутри it '...' do ... end
  # каждый такой кейс выполняется rspec-ом при запуске всего сценария в случайном порядке
  describe '#calculate_scoring' do
    it 'should return 10' do
      credit_request = CreditRequest.new(20, 30_000, 'm', 'n', 50_000)
      expect(credit_request.calculate_scoring).to eq 10
    end
    it 'should return 60' do
      credit_request = CreditRequest.new(25, 60_000, 'w', 'n', 10_000)
      expect(credit_request.calculate_scoring).to eq 60
    end
    it 'should return 80' do
      credit_request = CreditRequest.new(45, 25_000, 'w', 'y', 5_000)
      expect(credit_request.calculate_scoring).to eq 80
    end
  end
  describe '#approve?' do
    it 'should not approve' do
      credit_request = CreditRequest.new(20, 30_000, 'm', 'n', 50_000)
      expect(credit_request.approve?).to eq false
    end

    it 'should approve' do
      credit_request = CreditRequest.new(25, 60_000, 'w', 'n', 10_000)
      expect(credit_request.approve?).to eq true
    end
  end
end
