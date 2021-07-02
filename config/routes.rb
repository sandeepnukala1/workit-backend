Rails.application.routes.draw do
  resources :statuses
  resources :tasks
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
