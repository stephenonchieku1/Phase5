Rails.application.routes.draw do
  resources :seats, only: [:index, :show, :update]
  resources :bookings
  resources :saccos
  #resources :seats, only:[:index, :show]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :customers, only:[:create,:index,:show]
  resources :vehicles
  resources :routes
  post "/signup",  to: "customers#create"
  post '/auth/login', to: 'sessions#customer_login'
  delete '/auth/logout', to: 'sessions#customer_logout'
   #resources :vehicles do
    #resources :seats
    #post '/seats/:id/book', to: 'seats#book', as: 'book_seat'
  #end

end
