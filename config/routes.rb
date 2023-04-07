Rails.application.routes.draw do
  resources :constituents
  resources :herbs
  get 'dashboard/index'
  root "dashboard#index"
end
