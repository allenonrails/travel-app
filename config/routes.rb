Rails.application.routes.draw do
  resources :trips
  resources :places

  root "trips#index"
end
