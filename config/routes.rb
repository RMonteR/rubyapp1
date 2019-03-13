Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'sign in', sign_out: 'logout' }, controllers: { registrations: "user_registrations" }
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  get 'payments/thankyou'
  get 'orders/show'
  get 'users/show'

  post 'simple_pages/thank_you'
  post 'payments/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'simple_pages#index'
  mount ActionCable.server => '/cable'

  resources :users
  resources :orders, only: [:index, :show, :create, :destroy]
  root 'orders#index'
  resources :products do
    resources :comments
  end
end
