Rails.application.routes.draw do
  # ■root
  root to: "meganes#index"

  # ■session
  # resources :sessions, only: [:new, :create, :destroy]
  get "/users/login", to: "sessions#new"
  post "/users/login", to: "sessions#create"
  delete "/users/:id/logout", as: "users_delete", to: "sessions#destroy"

  # ■user
  resource :users, except: [:index]

  # ■mypage
  get "/mypage", to: "users#show"

  # ■megane
  resources :meganes do
    collection do
      post :confirm
    end
  end
  
  # ■like
  resources :likes, only: [:index, :create, :destroy] do
    collection do
      get :like_add
      get :like_delete
    end
  end

  # ■メール
  mount LetterOpenerWeb::Engine, at:"/letter_opener" if Rails.env.development?  #=> /config/routes.rb
end
