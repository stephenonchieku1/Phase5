Rails.application.routes.draw do
  resources :seats
  resources :bookings
  resources :saccos
  resources :seats, only: [:index, :show, :update]
  #resources :seats, only:[:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :customers, only:[:create,:index,:show]
  resources :vehicles
  resources :routes

   #resources :vehicles do
    #resources :seats
    #post '/seats/:id/book', to: 'seats#book', as: 'book_seat'
  #end


  post "/login", to: "sessions#create"
  post "/signup",to:"sessions#create"
  

end
