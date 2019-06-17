require 'rails_helper'

RSpec.describe Product, type: :model do

  let(:name) {'Big Chair'}
  let(:price) {100}
  let(:quantity) {40}
  let(:product) {Product.new(name: name, price: price, quantity: quantity, category: Category.create(name: 'Chairs'))}

  context "when all the proper attributes are provided" do

    it "should be valid" do
      product.valid?
      expect(product).to be_valid
    end

  end

  context "when the name is not provided" do
  
    it "should not be valid" do
      product.name = nil
      expect(product).to_not be_valid
    end

    it "reports a validation error on the name" do
      product.name = nil
      product.valid?
      expect(product.errors.full_messages).to include("Name can't be blank")
    
    end

  end

  context "when the price is not provided" do
  
    it "should not be valid" do
      product.price_cents = nil
      expect(product).to_not be_valid
    end

    it "reports a validation error on the price" do
      product.price_cents = nil
      product.valid?
      expect(product.errors.full_messages).to include("Price can't be blank")
    
    end

  end

  context "when the quantity is not provided" do
  
    it "should not be valid" do
      product.quantity = nil
      expect(product).to_not be_valid
    end

    it "reports a validation error on the quantity" do
      product.quantity = nil
      product.valid?
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    
    end

  end

  context "when the category is not provided" do
  
    it "should not be valid" do
      product.category = nil
      expect(product).to_not be_valid
    end

    it "reports a validation error on the category" do
      product.category = nil
      product.valid?
      expect(product.errors.full_messages).to include("Category can't be blank")
    
    end

  end

end
