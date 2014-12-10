Rails.application.routes.draw do
  root 'main#index'
  devise_for :users
  resources :stylesheets
  resources :stylesheets, only: [:index]
end
