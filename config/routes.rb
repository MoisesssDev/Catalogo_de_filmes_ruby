Rails.application.routes.draw do
  resources :film_genres

  root to: "home#index"
end
