Rails.application.routes.draw do
  
  resources :users, only: [:create, :index]
  post "/login", to: "users#login"
  
  
  resources :posts, only: [:show, :index, :create, :update, :delete]
  resources :fish, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
