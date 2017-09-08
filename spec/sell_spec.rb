require 'spec_helper'
require 'pry'

describe Sell do
  it "should create a serializable sell with one item" do
    sell = FactoryGirl.create(:singlesell207)
    expect(sell).not_to be_nil
  end

  it "should create a massive ammount of sells" do
    sells = FactoryGirl.create_list(:multiitem4, 100)
    expect(sells).not_to be_nil
  end
end
