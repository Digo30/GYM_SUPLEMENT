Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users do
    resources :products
  end
  resources :products, only: [:index, :show]
  get "up" => "rails/health#show", as: :rails_health_check
end
