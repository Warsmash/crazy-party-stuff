Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # creating the 7 CRUD routes for the Attraction model
  resources :attractions do
    resources :bookings
  end

  # définir structure path : 1 user et récupérer ses bookings donc id user /:user_id/bookings
  # aller dans bookings controller pour définir ci-dessus
  # récupérer bookings de ce user-là
  # loop dans view .each do
end
