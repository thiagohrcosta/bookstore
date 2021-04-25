Rails.application.routes.draw do
  root to: "books#home"
  resources :books, :authors
end
