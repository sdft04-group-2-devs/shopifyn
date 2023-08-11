Rails.application.routes.draw do
  resources :mpesas
  resources :carts, only: [:index, :show, :update, :destroy]
  resources :cart_items, only: [:create, :update, :destroy]
  resources :users, only: [:create, :index, :show] do
    member do
      get :get_cart
    end
  end
  post 'signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#logout'
  get '/logged_in', to: 'users#logged_in'
  get '/profile', to: 'users#profile'
  get '/current', to: 'users#current'
  post 'stkpush', to: 'mpesas#stkpush'
  post 'stkquery', to: 'mpesas#stkquery'
  resources :reviews, only: [:index, :create, :show, :update]
  resources :order_items, only: [:index, :create,:show]
  resources :payments, only: [:index, :show, :create, :update]
  resources :wishlists, only: [:index, :show, :create]
  resources :categories, only: [:index, :show, :create]
  resources :products

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/hello', to: 'application#hello_world'
end
  
 

  




