Rails.application.routes.draw do
  resources :users
  resources :planes
  resources :reservations
  resources :flights

  # Seats API route for JS/React to capture
  get "/flights/:id/seats" => "flights#seats", :as => "seats"
  post "/flights/:id/seats" => "flights#set_seat_data", :as => "set_seat"

  # Flight API route for JS/React to capture
  get "/flights/:to/:from/:date" => "flights#get_reserves", :as => "reserves"

  # Origin API route for JS/React to capture
  get "/flights/origin/destination" => "flights#get_origins_destinations", :as => "od"

  get "/flights/:id/staticseats" => "flights#static_seats", :as => "static"
end
