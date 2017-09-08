require 'category'

# Model representation of an item
class Item
  attr_accessor :category, :name, :price

  def to_json
    { category: @category.to_json, name: @name, price: @price }
  end
end

# Model representation of a combined set of items
class Combo < Item
  attr_accessor :subitems

  def to_json
    hash = super
    @subitems ||= {}
    hash[:subitems] = @items.map(&:to_json)
    hash
  end
end
