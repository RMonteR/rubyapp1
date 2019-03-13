require 'rails_helper'

  describe Order do
    before do
      @order1 = FactoryBot.build(:order, user_id: nil)
      @order2 = FactoryBot.build(:order, product_id: nil)
      @order3 = FactoryBot.build(:order, total: nil)
    end

  context "without user id" do
    it "is not valid" do
      expect(@order1).not_to be_valid
    end
  end

  context "without product_id" do
    it "is not valid" do
      expect(@order2).not_to be_valid
    end
  end

  context "without total price" do
    it "is not valid" do
      expect(@order3).not_to be_valid
    end
  end
end
