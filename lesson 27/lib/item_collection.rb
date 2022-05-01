class ItemCollection
  ITEM_TYPES = [
    {dir: 'movies', class: Movie},
    {dir: 'books', class: Book},
    {dir: 'albums', class: Album}
  ].freeze

  attr_reader :items

  def self.from_dir(dir_path)
    items = []

    ITEM_TYPES.each do |hash|
      item_dir = hash[:dir]
      item_class = hash[:class]
      Dir[File.join(dir_path, item_dir, '*.txt')].each do |path|
        items << item_class.from_file(path)
      end
    end

    new(items)
  end

  def initialize(items = [])
    @items = items
  end

  def to_a
    @items
  end

  def sort!(params)
    case params[:by]
    when :title
      @items.sort_by(&:to_s)
    when :price
      @items.sort_by!(&:price)
    when :quantity
      @items.sort_by!(&:quantity)
    end

    @items.reverse! if params[:order] == :desc
  end

  def to_s
    @items.to_a.map.with_index(1) do |item, index|
      "#{index}. #{item}"
    end.join("\n")
  end

  def remove_out_of_stock!
    @items.select! { |item| item.quantity.positive? }
  end
end
