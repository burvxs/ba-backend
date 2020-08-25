Rails.application.routes.draw do
  resources :users
  resources :planes
  resources :reservations
  resources :flights

  # Seats API route for JS/React to capture
  get "/planes/:id/seats" => "planes#seats", :as => "seats"

  # Flight API route for JS/React to capture
  get "/flights/:to/:from" => "flights#get_reserves", :as => "reserves"
end
