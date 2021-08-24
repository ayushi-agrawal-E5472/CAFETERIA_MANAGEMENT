Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session
  resources :carts
  resources :cart_items
  get "/" => "home#index"
  #resources :order_items
  resources :orders
  resources :menu_items
  #resources :menu_categories
  resources :users
end
