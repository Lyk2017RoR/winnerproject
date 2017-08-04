Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users

  resources :products, :categories, :brands
  
  resources :carts do
    resources :cart_items
  end

end
