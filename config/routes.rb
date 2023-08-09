Rails.application.routes.draw do
  resources :carts, only: [:show, :update, :destroy]
  resources :cart_items, only: [:create, :update, :destroy]
  resources :users, only: [:create, :index, :show]
<<<<<<< HEAD
  post '/passwordreset', to: 'password_reset#reset'
  post '/login', to: 'auth#create'
=======
  post '/login', to: 'sessions#create'
>>>>>>> main
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
  
 

  




