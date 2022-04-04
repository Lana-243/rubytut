class Movie < Item
  attr_reader :title, :genre, :director
  def initialize(params)
    super
    @title = params[:title]
    @genre = params[:genre]
    @director = params[:director]
  end

  def to_s
    "Movie \"#{@title}\", #{@genre}, director - #{@director}, #{super}"
  end

end
