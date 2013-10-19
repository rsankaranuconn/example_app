require 'spec_helper'

describe Product do

  before do 
  	@product = Product.new(name: "someproduct", sku: "5555") 
  end

  subject { @product }

  it { should respond_to(:name) }
  it { should respond_to(:sku) }

  it { should be_valid }

  describe "when name is not present" do
    before { @product.name = " " }
    it { should_not be_valid }
  end

  describe "when sku is not present" do
    before { @product.sku = nil }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @product.name = "a" * 31 }
    it { should_not be_valid }
  end  
end
