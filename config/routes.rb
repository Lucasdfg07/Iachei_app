Rails.application.routes.draw do
  resources :categories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :establishments do
    collection do
      get 'category'
    end
  end

  resources :addresses
  
  resources :cities
  patch 'update_user_city', to: 'cities#update_user_city'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  get 'welcome/set_user_role'
  

  namespace :superuser do
  	get 'welcome/index'
  end


  root "welcome#index"
end
