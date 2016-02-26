Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    resources :sessions
    resources :tasks
  end

  root 'products#index'
end
