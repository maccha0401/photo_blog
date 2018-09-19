Rails.application.routes.draw do
  root to: "users#show"
  # resources :sessions, only: [:new, :create, :destroy]
  get "/users/login", to: "sessions#new"
  post "/users/login", to: "sessions#create"
  delete "/users/:id/logout", as: "users_delete", to: "sessions#destroy"
  resource :users, except: [:index]
  get "/mypage", to: "users#show"
end
