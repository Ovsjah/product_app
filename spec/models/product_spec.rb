require 'spec_helper'

RSpec.describe Product, :type => :model do
  it "is valid with valid attributes" do
    expect(build(:product)).to  be_valid
  end
  
  it "is not valid without a name" do
    expect(build(:product_without_name)).not_to be_valid
  end
  
  it "is not valid without a description" do
    expect(build(:product_without_description)).not_to be_valid
  end
  
  it "is not valid without a price" do
    expect(build(:product_without_price)).not_to be_valid
  end
end
