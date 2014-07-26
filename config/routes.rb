Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/:locale' do
    resources :articles, only: [:index, :show]
  end

  root 'home#index'
end
