Rails.application.routes.draw do
  root to: "books#home"
  resources :authors do
    resources :books
  end
end
