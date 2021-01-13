Rails.application.routes.draw do
  get '/update_status/:id', to: 'transaction_orders#update_status', as: 'update_status'

  resources :transaction_orders
  resources :transaction_items
  resources :cart_items
  resources :types
  resources :sizes
  resources :colors
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
