Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails
  # get "cocktails", to: "cocktails#index"
end
