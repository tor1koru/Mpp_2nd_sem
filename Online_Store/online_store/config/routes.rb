Rails.application.routes.draw do
  root 'home#index'
  get 'cart', to: 'home#cart'
  get 'about', to: 'home#about'
  get 'products', to: 'home#products'
  get 'contact', to: 'home#contact'
  get 'index', to: 'home#index'
end
