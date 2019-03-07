require 'rails_helper'

RSpec.describe PaymentsController, type: :controller do

  describe "POST #create" do
    it "returns http success" do
      pending "aspetta e spera"
      post :create
      expect(response).to redirect_to payments_thankyou_path
    end
  end
end
