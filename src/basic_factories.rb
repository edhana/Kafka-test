require 'factory_girl'
require 'date'

require 'application_helper'
require 'category'
require 'item'
require 'sell'

# Definitions for all basic classes
FactoryGirl.define do
  base_time = DateTime.now

  # create all categories
  factory :hamburger, class: Category do
    skip_create
    name 'hamburger'
  end

  factory :bigmac, class: Item do
    skip_create
    category { FactoryGirl.build(:hamburger) }
    name 'bigmac'
    price 10.35
  end

  factory :cheddar, class: Item do
    category { FactoryGirl.build(:hamburger) }
    name 'cheddar'
    price 10.35
  end

  factory :sandwich, class: Item do
    category { FactoryGirl.build(:hamburger) }
    name { %w[cheddar mvfish bigmac mcchicken].sample }
    price { [10.35, 33.2, 1.25].sample }
  end

  factory :singlesell207, class: Sell do
    topic 'loja207n_1'
    sold_at base_time
    items [FactoryGirl.build(:bigmac)]
    total_bill 132.02
  end

  factory :multiitem4, class: Sell do
    topic 'loja207n_1'
    sold_at base_time
    items [FactoryGirl.build_list(:sandwich, 4)]
  end
end
