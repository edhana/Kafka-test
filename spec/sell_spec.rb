require 'spec_helper'
require 'pry'

describe Sell do
  it "should create a serializable sell with one item" do
    sell = FactoryGirl.create(:singlesell207)
    expect(sell).not_to be_nil
    # expect(sell.to_json[:items][0]).to eq(item.to_json)
  end
end
