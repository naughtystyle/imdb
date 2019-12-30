Rails.application.routes.draw do
  root "movies#index"

  resources :categories, only: :show
  resources :movies, only: :show do
    resources :ratings, only: :create
  end
end
