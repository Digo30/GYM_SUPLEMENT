Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]


  get 'contact/new'
  get 'contact/create'
  devise_for :users
  root to: "pages#home"
  resources :users do
    resources :products
  end
  resources :users do
    member do
      get :my_products
    end
  end
  resources :products, only: [:index, :show]
  get "up" => "rails/health#show", as: :rails_health_check
end
