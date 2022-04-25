require_relative 'film'

class FilmCollection
  def self.film_list(filenames)
    film_data = filenames.map { |filename| File.readlines(filename, chomp: true) }
    return film_data
  end

  attr_reader :collection

  def initialize(filenames)
    @collection = FilmCollection.film_list(filenames)
  end

  def films
    self.collection.map { |title, director, year| Film.new(title, director, year) }
  end

  def directors
    self.films.map { |film| film.director }.uniq
  end

  def directors_number
    self.directors.length
  end

  def movie_choice(director_choice)
    self.films.select { |film| film.director == self.directors[director_choice - 1] }.sample
  end
end
