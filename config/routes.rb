Rails.application.routes.draw do

  devise_for :clients
  devise_for :customers

  namespace :clients do
    get 'items/index'
    get 'items/top'
    get 'items/new'
    resources :items, only:[:create, :show]
  end

  resources :sites, only:[:index, :create, :show]
  get 'sites/new'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
