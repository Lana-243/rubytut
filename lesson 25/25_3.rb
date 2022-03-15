products = {
  :apples => 5,
  :potatoes => 10,
  :onions => 2
}

general = {
  :soap => 1,
  :shampoo => 2,
  :puzzles => 1,
  :glue => 1
}

shopping_list = products.merge(general)
puts shopping_list
