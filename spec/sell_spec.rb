require 'spec_helper'

describe Sell do
  it "should create a serializable sell with one item" do
    item = FactoryGirl.create :item
    sell = FactoryGirl.create(:sell, :items => [item])
    expect(sell).not_to be_nil
    expect(sell.to_json[:items][0]).to eq(item.to_json)
  end
end
