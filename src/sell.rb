require 'item'
require 'persistent_model'

# Model representation of a sell
class Sell < PersistentModel
  attr_accessor :topic, :sold_at, :items, :total_bill

  def to_json
    {
      sold_at: @sold_at,
      items: @items.map(&:to_json),
      total_bill: @total_bill
    }
  end
end
