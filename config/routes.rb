Rails.application.routes.draw do
  root "movies#index"

  resources :categories, only: :show
end
