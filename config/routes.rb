Rails.application.routes.draw do
  root "flights#index"
  get "book_flight", to: "bookings#new"
  resources :flights, only: [:index]
  resources :bookings, only: [:new, :show, :create]
end
