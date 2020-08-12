Rails.application.routes.draw do
  resources :photos
  resources :profiles
  get "/api" => "apis#get_photos"
  root :to => 'photos#home'
  devise_for :admins
  devise_for :users
  # root to: 'users#index'
  # # root to: "home#index"
  # resources :users, except: [:new]

  # get "/signup" => "users#new", as: "signup"
  # get "/login" => "sessions#new", as: "login"
  # post "/login" => "sessions#create"
  # delete "/logout" => "sessions#destroy"
 
  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
