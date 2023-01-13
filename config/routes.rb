Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :customers, only:[:create,:index,:show]
  resources :vehicles
  resources :routes
  resources :seats
  resources :bookings
  resources :saccos, only:[:index,:create,:show,:update]


  post '/customer/signup',  to: "customers#create"
  post '/customer/login', to: 'sessions#customer_login'
  delete '/customer/logout', to: 'sessions#customer_logout'

  post '/sacco/signup',  to: "saccos#create"
  post '/sacco/login', to: 'sessions#sacco_login'
  delete '/sacco/logout', to: 'sessions#sacco_logout'

end
