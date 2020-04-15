Rails.application.routes.draw do

  namespace :api do
    resources :users, only: [:index]
    resources :playlist, only: [:show]
    resources :songs, only: [:index]
  end
end
