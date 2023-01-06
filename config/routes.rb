Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :customers, only:[:create,:index,:show]
  resources :vehicles
  resources :routes

  post "/login", to: "sessions#create"
  post "/signup",to:""
  
end
