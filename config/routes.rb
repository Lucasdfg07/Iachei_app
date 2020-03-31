Rails.application.routes.draw do
  resources :categories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :establishments do
    collection do
      get 'category'
      get 'current_user_establishments'
    end
  end

  resources :addresses
  
  resources :cities
  patch 'update_user_city', to: 'cities#update_user_city'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks", registrations: 'registrations' }

  get 'welcome/set_user_role'
  
  resources :about

  namespace :superuser do
  	get 'welcome/index'
  end


  root "welcome#index"
end
