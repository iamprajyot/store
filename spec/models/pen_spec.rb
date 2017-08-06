require 'rails_helper'

RSpec.describe Pen, type: :model do
  let(:valid_attributes) {
    FactoryGirl.build(:pen).attributes
  }

  it "is valid with valid attributes" do
  	pen = FactoryGirl.build(:pen)
  	expect(pen.valid?).to equal true
  end

  it "is not valid without a name" do
  	pen = FactoryGirl.build(:pen, name: nil)
  	expect(pen.valid?).to equal false
  end

  it "is not valid without a price" do
  	pen = FactoryGirl.build(:pen, price: nil)
  	expect(pen.valid?).to equal false
  end

  it "is not valid without a description" do
  	pen = FactoryGirl.build(:pen, description: nil)
  	expect(pen.valid?).to equal false
  end

  it "is not valid without a inward date" do
  	pen = FactoryGirl.build(:pen, inward_date: nil)
  	expect(pen.valid?).to equal false
  end

  # it "is not valid without a title"
  # it "is not valid without a description"
  # it "is not valid without a start_date"
  # it "is not valid without a end_date"
end
