require 'rspec'

require 'film_collection'

describe FilmCollection do
  let(:collection) do
    filenames = Dir[File.join(__dir__, 'fixtures', '*.txt')]
    FilmCollection.from_dir(filenames)
  end

  describe '#films' do
    it 'should return director of movie Avatar' do
      director = collection.films.find { |film| film.title == 'Avatar'}.director
      expect(director).to eq 'James Cameron'
    end

    it 'should return year of movie Matrix' do
      year = collection.films.find { |film| film.title == 'The Matrix'}.year
      expect(year).to eq '1999'
    end
  end

  describe '#directors' do
    it 'should return director array' do
      directors_list = collection.directors.sort
      expect(directors_list).to eq ['Colin Trevorrow', 'James Cameron', 'John Carpenter', 'Kirk Wise', 'Wachowski Sisters']
    end
  end

  describe '#directors_number' do
    it 'should return director array' do
      directors_number = collection.directors_number
      expect(directors_number).to eq 5
    end
  end

end
