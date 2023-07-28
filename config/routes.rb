Rails.application.routes.draw do

  resources :products
  resources :users
  resources :reviews
  resources :order_items
  resources :payments
  resources :wishlists
  resources :categories, only: [:index, :show, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/hello', to: 'application#hello_world'
end
