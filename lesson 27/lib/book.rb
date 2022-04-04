class Book < Item
  attr_accessor :title, :genre, :author

  def initialize(params)
    super
    @title = params[:title]
    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    "Book \"#{@title}\", #{@genre}, author - #{@author}, #{super}"
  end
end
