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

  factory :beverage, class: Category do
    skip_create
    name 'beverage'
  end

  factory :desert, class: Category do
    skip_create
    name 'desert'
  end

  category_hamburger = FactoryGirl.build(:hamburger)
  category_beverage = FactoryGirl.build(:beverage)
  category_desert = FactoryGirl.build(:desert)

  # Items factories
  factory :bigmac, class: Item do
    skip_create
    category category_hamburger
    name 'bigmac'
    price 10.35
  end

  factory :cheddar, class: Item do
    skip_create
    category category_hamburger
    name 'cheddar'
    price 15.35
  end

  factory :mcchicken, class: Item do
    skip_create
    category category_hamburger
    name 'mcchicken'
    price 20.35
  end

  # Random item creation TODO: Improve
  factory :sandwich, class: Item do
    skip_create
    category category_hamburger
    name { %w[cheddar mvfish bigmac mcchicken].sample }
    price { [10.35, 33.2, 1.25].sample }
  end

  factory :promo1, class: Combo do
    skip_create
    category category_hamburger
    name "Combo 1 - Bigmac"
    price 20.45
    subitems [ FactoryGirl.build(:bigmac), FactoryGirl.build(:cheddar) ]
  end

  factory :singlesell207, class: Sell do
    topic 'loja207n_1'
    sold_at base_time
    items [FactoryGirl.build(:bigmac)]
  end

  factory :multiitem4, class: Sell do
    topic 'loja207n_1'
    sold_at base_time
    items FactoryGirl.build_list(:sandwich, 4)
  end
end
