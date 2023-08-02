Rails.application.routes.draw do

  resources :products
  resources :users, only: [:create, :index, :show]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  resources :reviews
  resources :order_items
  resources :payments
  resources :wishlists
  resources :categories

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/hello', to: 'application#hello_world'
end
