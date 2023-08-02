Rails.application.routes.draw do
  
  resources :users, only: [:create, :index, :show]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  resources :reviews, only: [:index, :create, :show, :update]
  resources :order_items, only: [:index, :create,:show]
  resources :payments, only: [:index, :show, :create, :update]
  resources :wishlists, only: [:index, :show, :create]
  resources :categories, only: [:index, :show, :create]
  resources :products, only: [:index, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/hello', to: 'application#hello_world'
end
  
 

  




