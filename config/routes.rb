Rails.application.routes.draw do
  get    "restaurants",          to: "restaurant#index"

  get    "restaurants/new",      to: "restaurant#new",  as: :new_restaurant
  post   "restaurants",          to: "restaurant#create"

  # NB: The `show` route needs to be *after* `new` route.
  get    "restaurants/:id",      to: "restaurant#show", as: :restaurant

  get    "restaurants/:id/reviews/new", to: "reviews#new",  as: :new_review
  post   "restaurants/:id/reviews", to: "reviews#create"
end
