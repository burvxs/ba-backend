Rails.application.routes.draw do
  resources :users
  resources :planes
  resources :reservations
  resources :flights

  # Seats API route for JS/React to capture
  get "/planes/:id/seats" => "planes#seats", :as => "seats"
  post "planes/:id/seats" => "planes#set_seat_data", :as => "set_seat"

  # Flight API route for JS/React to capture
  get "/flights/:to/:from/:date" => "flights#get_reserves", :as => "reserves"

  # Origin API route for JS/React to capture
  get "/flights/origin/destination" => "flights#get_origins_destinations", :as => "od"

  get "/planes/:id/staticseats" => "planes#static_seats", :as => "static"
end
