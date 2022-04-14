Rails.application.routes.draw do
  root "products#search"
  resources :products
end
