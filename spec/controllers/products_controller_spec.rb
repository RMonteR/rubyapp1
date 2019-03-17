require 'rails_helper'

describe ProductsController, type: :controller do

  before do
    @user = FactoryBot.create(:user)
    @admin = FactoryBot.create(:admin)
    @product = FactoryBot.create(:product)
  end

  describe 'GET #index' do
    it 'shows all products' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end

  describe 'GET #show' do
    it 'shows a single product' do
      get :show, params: { id: @product.id }
      expect(response).to be_ok
      expect(response).to render_template('show')
    end
  end

  describe 'GET #edit' do
    before do
      sign_in @admin
    end

    context 'when clicking on "edit" button' do
      it 'shows product edit form' do
        get :edit, params: { id: @product.id }
        expect(response).to be_ok
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'NEW #product' do
    before do
      sign_in @admin
    end

    context 'when clicking on "create new product" button' do
      it 'shows form for new product' do
        get :new
        expect(response).to be_ok
      end
    end

    context 'when clicking on "create product" button' do
      it 'saves the new product' do
         post :create, params: { product: { name: "name", description: "description", image_url: "image_url", colour: "colour", price: 20 } }
        expect(response).to redirect_to (Product.last)
      end
    end
  end

  describe 'PATCH/PUT #update' do
    before do
      sign_in @admin
    end

    context 'when clicking on "update" button' do
      it 'saves changes to product' do
        patch :update, params: { id: @product.id, product: { title: 'new'} }
        expect(response).to redirect_to product_path(@product.id)
      end
    end
  end

  describe 'DESTROY #product' do
    before do
      sign_in @admin
    end

    context 'when clicking on "delete" option' do
      it 'deletes single product and its comments' do
        delete :destroy, params: { id: @product.id }
        expect(response).to have_http_status(302)
        expect(response).to redirect_to (products_url)
      end
    end
  end
end
