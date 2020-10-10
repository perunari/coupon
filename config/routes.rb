Rails.application.routes.draw do
  devise_for :shops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'salecoupons#index'
  resources :salecoupons, only: [:new, :create, :destroy, :edit, :update]
  resources :shops, only: [:show]
end
