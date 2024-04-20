Rails.application.routes.draw do
  get 'customers/index'
  get 'products/index'
  root 'home#index'
  get 'cart', to: 'home#cart'
  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'index', to: 'home#index'
  get '/home/index', to: 'home#index'
  get 'customers/index', to: 'customers#index'
  resources :products
  resources :customers
end
