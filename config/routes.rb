Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]


  get 'contact/new'
  get 'contact/create'
  devise_for :users
  root to: "pages#home"
  resources :users do
    resources :products
  end
  resources :products, only: [:index, :show, :edit, :update, :destroy]
  get "up" => "rails/health#show", as: :rails_health_check
end
