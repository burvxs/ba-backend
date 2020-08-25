Rails.application.routes.draw do
  resources :users
  resources :planes
  resources :reservations
  resources :flights
end
