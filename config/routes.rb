Rails.application.routes.draw do

  resources :products
  resources :users
  resources :reviews
  resources :order_items
  resources :payments, only: [:index, :show, :create, :update]
  resources :wishlists, only: [:index, :show, :create]
  resources :categories, only: [:index, :show, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/hello', to: 'application#hello_world'
end
