require 'basic_model'

# Model representation of an item
class Item < BasicModel
  attr_accessor :category, :name, :price

  # TODO: Fix all attributes
  def initialize
    @category = "Hamburger"
  end

  def to_json
    { category: @category, name: @name, price: @price }
  end
end
