require 'rails_helper'

describe Product do

  before do
    @user = FactoryBot.create(:user)
    @product = FactoryBot.create(:product)
    @comment1 = FactoryBot.create(:comment, user: @user, product: @product, rating: 1, created_at: "Wed, 13 Mar 2019 09:31:27 UTC +00:00")
    @comment2 = FactoryBot.create(:comment, user: @user, product: @product, rating: 3, created_at: "Tue, 12 Mar 2019 09:31:27 UTC +00:00")
    @comment3 = FactoryBot.create(:comment, user: @user, product: @product, rating: 5, created_at: "Mon, 11 Mar 2019 09:31:27 UTC +00:00")
  end


  # *** TEST COMMENTS ***
  context "when the product has comments" do
    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq(3.0)
    end

    it "shows latest comment first" do
      expect(@product.latest_comment).to eq(@comment1)
    end

    it "shows higher rating first" do
      expect(@product.highest_rating_comment).to eq(@comment3)
    end

    it "shows lower rating first" do
      expect(@product.lowest_rating_comment). to eq(@comment1)
    end
  end

# *** TEST VALIDATIONS ***

  context "without a name value" do
    it "is not valid" do
      expect(Product.new(name: nil)).not_to be_valid
      expect(Product.new(name: "")).not_to be_valid
    end
  end

  context "without a description value" do
    it "is not valid" do
      expect(Product.new(description: nil)).not_to be_valid
      expect(Product.new(description: "")).not_to be_valid
    end
  end

  context "without a colour value" do
    it "is not valid" do
      expect(Product.new(colour: nil)).not_to be_valid
      expect(Product.new(colour: "")).not_to be_valid
    end
  end

  context "without a price value" do
    it "is not valid" do
      expect(Product.new(price: nil)).not_to be_valid
      expect(Product.new(price: "")).not_to be_valid
    end
  end

  context "without an image value" do
    it "is not valid" do
      expect(Product.new(image_url: nil)).not_to be_valid
      expect(Product.new(image_url: "")).not_to be_valid
    end
  end
end
