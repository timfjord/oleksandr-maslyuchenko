Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :articles, only: [:index, :show]

  root 'home#index'
end
