require 'factory_girl'
require 'date'

require 'application_helper'
require 'category'
require 'item'
require 'sell'

# Sell class Factory
FactoryGirl.define do
  base_time = DateTime.now

  # create all categories
  factory :hamburger, class: Category do
    skip_create
    name "hamburger"
  end

  factory :bigmac, class: Item do
    skip_create
    category { FactoryGirl::build(:hamburger) }
    name "bigmac" # TODO: Colocar o Faker aqui
    price 10.35
  end

  fix_items = []
  fix_items << FactoryGirl::build(:bigmac)
  
  factory :singlesell207, class: Sell do
    topic "loja207n_1"
    sold_at base_time
    items fix_items
    total_bill 132.02
  end
end
