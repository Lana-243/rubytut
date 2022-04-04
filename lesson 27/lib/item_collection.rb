class ItemCollection

  ITEM_TYPES = {
    movie: {dir: 'movies', class: Movie},
    book: {dir: 'books', class: Book}
  }

  def initialize(items = [])
    @items = items
  end

  def self.from_dir(dir_path)
    items = []

    ITEM_TYPES.each do |type, hash|
      item_dir = hash[:dir]
      item_class = hash[:class]

      Dir[dir_path + '/' + item_dir + '/*.txt'].each do |path|
        items << item_class.from_file(path)
      end
    end

    self.new(items)
  end

  def to_a
    @items
  end

  def sort!(params)
    case params[:by]
    when :title
      @items.sort_by! { |item| item.to_s }
    when :price
      @items.sort_by! { |item| item.price }
    when :quantity
      @items.sort_by! { |item| item.quantity }
    end

    @items.reverse! if params[:order] == :asc

    self
  end
end
