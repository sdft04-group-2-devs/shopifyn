Rails.application.routes.draw do

  resources :products
  resources :users
  resources :reviews, only: [:index, :create, :show, :update]
  resources :order_items, only: [:index, :create,:show]
  resources :payments
  resources :wishlists
  resources :categories

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/hello', to: 'application#hello_world'
end
