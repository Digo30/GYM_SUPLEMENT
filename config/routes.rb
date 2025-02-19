Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]

  resource :carts, only: [:show] do
    post 'add_product/:cart_id', to: 'carts#add_product', as: 'add_product'
    member do
      delete :remove_product
    end
  end


  resources :checkouts, only: [:new, :create]

  get '/checkout/confirmation', to: 'checkouts#confirmation', as: :checkout_confirmation
  get '/checkout/myorders', to: 'checkouts#myorders', as: :my_orders

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
  get 'my_account', to: 'users#my_account', as: :my_account



end
