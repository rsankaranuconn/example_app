require 'spec_helper'

describe "Products pages" do
  subject { page }

  describe "new product page" do
    #let(:product) { FactoryGirl.create(:product) }  
    #before { visit new_product_path(product) }
    before { visit new_product_path }

    it { should have_content("Name") }
    it { should have_content("Sku") }
  end

  describe "profile page" do
    let(:product) { FactoryGirl.create(:product) }  
    before { visit product_path(product) }

    it { should have_content(product.name) }
    it { should have_content(product.sku) }
  end
end
