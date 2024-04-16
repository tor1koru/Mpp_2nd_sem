Rails.application.routes.draw do
  get 'products/index'
  root 'home#index'
  get 'cart', to: 'home#cart'
  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'index', to: 'home#index'

  resources :products
end
