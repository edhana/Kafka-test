require 'spec_helper'

describe Sell do
  it "should create a serializable sell" do
    sell = FactoryGirl.create(:sell)
    expect(sell).not_to be_nil
    expect(sell.to_json).to include('loja207n')
  end
end
