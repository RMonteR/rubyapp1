require 'rails_helper'

describe Comment do

  before do
    @comment1 = FactoryBot.build(:comment, body: nil)
    @comment2 = FactoryBot.build(:comment, user: nil)
    @comment3 = FactoryBot.build(:comment, product: nil)
    @comment4 = FactoryBot.build(:comment, rating: nil)
  end

  context "without body" do
    it "is not valid" do
      expect(@comment1).not_to be_valid
    end
  end

  context "without user" do
    it "is not valid" do
      expect(@comment2).not_to be_valid
    end
  end

  context "without product" do
    it "is not valid" do
      expect(@comment3).not_to be_valid
    end
  end

  context "without rating" do
    it "is not valid" do
      expect(@comment4).not_to be_valid
    end
  end
end
