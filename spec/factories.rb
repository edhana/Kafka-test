require 'date'

# Sell class Factory
FactoryGirl.define do
  factory :item, class: Item do
    skip_create

    category "Hamburger"
    name "Bigmac"
    price 10.32
  end

  factory :sell, class: Sell do
    topic "loja207n_1"
    sold_at DateTime.now
    items [FactoryGirl.create(:item)]
    total_bill 132.02
  end
end
