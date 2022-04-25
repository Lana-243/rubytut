require 'rspec'

require 'film_collection.rb'

describe Film do

  describe '#director' do
    it 'should return director of movie Titanic' do
      film = Film.new('Titanic', 'James Cameron', '1997')
      expect(film.director).to eq 'James Cameron'
    end
  end

  describe '#title' do
    it 'should return title of movie The Thing ' do
      film = Film.new('The Thing', 'John Carpenter', '1982')
      expect(film.title).to eq 'The Thing'
    end
  end

  describe '#year' do
    it 'should return director of movie Avatar' do
      film = Film.new('Atlantis: The Lost Empire', 'Kirk Wise', '2001')
      expect(film.year).to eq '2001'
    end
  end
end

