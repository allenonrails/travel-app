Rails.application.routes.draw do
  resources :trips, :except => [:new]
  resources :places

  root "trips#index"
end
