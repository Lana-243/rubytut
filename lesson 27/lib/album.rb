class Album < Item
  attr_accessor :title, :author, :genre, :year

  def initialize(params)
    super
    @title = params[:title]
    @author = params[:author]
    @genre = params[:genre]
    @year = params[:year]
  end

  def to_s
    %(Album "#{@title}"(#{@year}), #{@genre}, author - #{@author}, #{super})
  end

  def self.from_file(file_path)
    file_data = File.readlines(file_path, chomp: true)
    self.new(
        title: file_data[0],
        author: file_data[1],
        genre: file_data[2],
        year: file_data[3],
        price: file_data[4],
        quantity: file_data[5]
      )
  end
end
