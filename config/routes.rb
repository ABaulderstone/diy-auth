Rails.application.routes.draw do
  resources :users
  root 'pages#home'
  get "/signup", to: "users#new", as: "signup" 
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create", as: "signin"
  get "/logout", to: "sessions#destroy", as: "logout"
  get "/hidden", to: "pages#members_only", as: "hidden"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
