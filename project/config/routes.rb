Rails.application.routes.draw do
  resources :users do
    collection do
      get 'login'
      post 'do_login'
      get 'logout'
    end
  end
  get '/update_status_customer/:id', to: 'transaction_orders#update_status_customer', as: 'update_status_customer'
  get '/update_status_administrator/:id', to: 'transaction_orders_administrator#update_status_administrator', as: 'update_status_administrator'

  resources :transaction_orders
  resources :transaction_items
  resources :cart_items
  resources :types
  resources :sizes
  resources :colors
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
