Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#index'
  get 'shop' => 'pages#shop'

  resources :carts
  resources :product_items
  resources :orders

end
