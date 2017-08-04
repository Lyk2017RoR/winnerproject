Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :users
  devise_for :admins

  resources :users do
    resources :profiles
  end

  resources :products, :categories, :brands

  resources :carts
  resources :cart_items
  post '/add_to_cart/:product_id' => 'cart_items#add_to_cart', :as => 'add_to_cart'
end
