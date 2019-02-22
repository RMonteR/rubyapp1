Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users
  resources :products
  get 'simple_pages/about' # how do I say - if you are instructed to get this about page, redirect the user to contact? (for example because about is under reconstruction)
  get 'simple_pages/contact'
  post 'simple_pages/thank_you'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'simple_pages#index'


  resources :orders, only: [:index, :show, :create, :destroy]
  root 'orders#index'

  resources :products do
    resources :comments
  end

end
