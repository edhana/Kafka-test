# require 'date'
#
# # Sell class Factory
# FactoryGirl.define do
#   base_time = DateTime.now
#
#   # create all categories
#   factory :hamburger, class: Category do
#     skip_create
#     name "hamburger"
#   end
#
#   # model without direct persistence
#   factory :item, class: Item do
#     skip_create
#     category FactoryGirl.build(:hamburger)
#     name "Bigmac"
#     price 10.32
#   end
#
#   # factory :bigmac, class: Item do
#   #   skip_create
#   #   category
#   # end
#
#   factory :sell, class: Sell do
#     topic "loja207n_1"
#     sold_at base_time
#     # items [FactoryGirl.create(:item)]
#     total_bill 132.02
#   end
#
# end
