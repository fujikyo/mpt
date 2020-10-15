Rails.application.routes.draw do
  devise_for :users
  root to: 'profiles#index'
  resources :profiles, only: [:index ,:show ,:new, :destroy, :edit]
end