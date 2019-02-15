Rails.application.routes.draw do
  resources :products
  get 'simple_pages/about' # how do I say - if you are instructed to get this about page, redirect the user to contact? (for example because about is under reconstruction)
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'simple_pages#index'

  resources :orders, only: [:index, :show, :create, :destroy]
  root 'orders#index'
end
