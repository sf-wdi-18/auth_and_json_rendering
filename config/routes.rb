Rails.application.routes.draw do
  #home
  root to: "welcome#index"
  #auth
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
  #users
  get "/sign_up", to: "users#new", as: "sign_up"
  resources :users
end
