Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  # creating the 7 CRUD routes for the Attraction model

  resources :attractions do
    resources :bookings
    resources :reviews, only: :create

  end

  get "my_attractions", to: "attractions#user_attractions"

  # définir structure path : 1 user et récupérer ses bookings donc id user /:user_id/bookings
  # aller dans bookings controller pour définir ci-dessus
  # récupérer bookings de ce user-là
  # loop dans view .each do
  get "user_bookings", to: "bookings#user_bookings", as: :user_bookings

  resources :conversations do
    resources :messages
  end
end
