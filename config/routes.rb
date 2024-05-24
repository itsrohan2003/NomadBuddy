Rails.application.routes.draw do
  resources :bookings, only:[:index, :create, :show]
  resources :destinations, only:[:index, :show, :update, :destroy, :create]
  resources :users, only:[:create]
  
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout/:id", to: "sessions#destroy"
  post "/signup", to: "users#create"
end
