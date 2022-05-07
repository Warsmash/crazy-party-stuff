Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # creating the 7 CRUD routes for the Attraction model
  resources :attractions
  
end
