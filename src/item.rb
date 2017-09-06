require 'category'

# Model representation of an item
class Item
  attr_accessor :category, :name, :price
  
  def to_json
    { category: @category.to_json, name: @name, price: @price }
  end
end
