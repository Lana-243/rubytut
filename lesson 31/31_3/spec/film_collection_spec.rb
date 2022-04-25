require 'rspec'

require 'film_collection.rb'

describe FilmCollection do

  describe '#films' do
    it 'should return director of movie Avatar' do
      filenames = Dir[File.join(__dir__, 'fixtures', '*.txt')]
      collection = FilmCollection.new(filenames)
      director = collection.films.find { |film| film.title == 'Avatar'}.director
      expect(director).to eq 'James Cameron'
    end

    it 'should return year of movie Matrix' do
      filenames = Dir[File.join(__dir__, 'fixtures', '*.txt')]
      collection = FilmCollection.new(filenames)
      director = collection.films.find { |film| film.title == 'Matrix'}.director
      expect(director).to eq '1999'
    end
  end

  describe '#directors' do
    it 'should return director array' do
      filenames = Dir[File.join(__dir__, 'fixtures', '*.txt')]
      collection = FilmCollection.new(filenames)
      directors_list = collection.directors.sort
      expect(directors_list).to eq ['Colin Trevorrow', 'James Cameron', 'John Carpenter', 'Kirk Wise', 'Wachowski Sisters']
    end
  end

  describe '#directors_number' do
    it 'should return director array' do
      filenames = Dir[File.join(__dir__, 'fixtures', '*.txt')]
      collection = FilmCollection.new(filenames)
      directors_number = collection.directors_number
      expect(directors_number).to eq 5
    end
  end

end
