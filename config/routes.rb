Rails.application.routes.draw do
  resources :seats, only: [:index, :show, :update]
  #resources :seats, only:[:index, :show]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :customers, only:[:create,:index,:show]
  resources :vehicles
  resources :routes
  post "/signup",  to: "customers#create"
  post '/login', to: 'sessions#create'
  delete '/auth/logout', to: 'sessions#customer_logout'
   #resources :vehicles do
    #resources :seats
    #post '/seats/:id/book', to: 'seats#book', as: 'book_seat'
  #end

end
