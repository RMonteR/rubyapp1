Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'sign in', sign_out: 'logout' }, controllers: { registrations: "user_registrations" }
  get 'simple_pages/about' # how do I say - if you are instructed to get this about page, redirect the user to contact? (for example because about is under reconstruction)
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  get 'payments/thankyou'

  post 'simple_pages/thank_you'
  post 'payments/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'simple_pages#index'

  resources :users
  resources :orders, only: [:index, :show, :create, :destroy]
  root 'orders#index'
  resources :products do
    resources :comments
  end
end
