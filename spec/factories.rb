require 'date'

# Sell class Factory
FactoryGirl.define do

  factory :sell, class: Sell do
    topic "loja207n"
    sold_at DateTime.now
    items { { "bigmac" => 1, "refri-coca-cola" => 1 } }
    total_bill 132.02
  end
end
