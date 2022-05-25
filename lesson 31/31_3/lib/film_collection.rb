require_relative 'film'

class FilmCollection
  def self.film_list(filenames)
     filenames.map { |filename| File.readlines(filename, chomp: true) }
  end

  attr_reader :collection

  def initialize(filenames)
    @collection = FilmCollection.film_list(filenames)
  end

  def films
    collection.map { |title, director, year| Film.new(title, director, year) }
  end

  def directors
    films.map { |film| film.director }.uniq
  end

  def directors_number
    directors.length
  end

  def movie_choice(director_choice)
    films.select { |film| film.director == self.directors[director_choice - 1] }.sample
  end
end
