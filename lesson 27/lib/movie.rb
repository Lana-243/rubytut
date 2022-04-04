class Movie < Item
  attr_accessor :title, :genre, :director
  def initialize(params)
    super
    @title = params[:title]
    @genre = params[:genre]
    @director = params[:director]
  end

  def to_s
    "Movie \"#{@title}\", #{@genre}, director - #{@director}, #{super}"
  end

  def self.from_file(file_path)
    file_data = File.readlines(file_path, chomp: true)
    self.new(
        title: file_data[0],
        genre: file_data[1],
        director: file_data[2],
        price: file_data[3],
        quantity: file_data[4]
    )
  end
end
