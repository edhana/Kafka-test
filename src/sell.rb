require 'item'
require 'persistent_model'

# Model representation of a sell
class Sell < PersistentModel
  attr_accessor :topic, :sold_at, :items, :total_bill

  def total?
    raise ArgumentError if @items.nil?

    @items.reduce(0) { |sum, i| sum + i.price }
  end

  def to_json
    a = {
      sold_at: @sold_at,
      items: @items.map(&:to_json),
      total_bill: total?
    }
  end
end
