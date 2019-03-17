require 'rails_helper'

describe Comment do

  context "without body" do
    it "is not valid" do
      @comment1 = FactoryBot.build(:comment, body: nil)
      expect(@comment1).not_to be_valid
    end
  end

  context "without user" do
    it "is not valid" do
      @comment2 = FactoryBot.build(:comment, user: nil)
      expect(@comment2).not_to be_valid
    end
  end

  context "without product" do
    it "is not valid" do
      @comment3 = FactoryBot.build(:comment, product: nil)
      expect(@comment3).not_to be_valid
    end
  end

  context "without rating" do
    it "is not valid" do
      @comment4 = FactoryBot.build(:comment, rating: nil)
      expect(@comment4).not_to be_valid
    end
  end
end
