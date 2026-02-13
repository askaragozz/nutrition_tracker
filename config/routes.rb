Rails.application.routes.draw do

  root "food_items#index"

  resources :food_items
  resources :categories, only: [:index, :show]

end
