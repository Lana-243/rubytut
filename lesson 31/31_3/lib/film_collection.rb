require_relative 'film'

class FilmCollection
  def self.from_dir(filenames)
    collection = filenames.map { |filename| File.readlines(filename, chomp: true) }
    films = collection.map { |title, director, year| Film.new(title, director, year) }
    self.new(films)
  end

  attr_reader :films

  def initialize(films)
    @films = films
  end

  def directors
    @films.map { |film| film.director }.uniq
  end

  def directors_number
    directors.length
  end

  def movie_choice(director_choice)
    @films.select { |film| film.director == self.directors[director_choice - 1] }.sample
  end
end
