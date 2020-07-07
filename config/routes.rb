Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks", registrations: 'registrations' }

  resources :about
  resources :categories
  resources :addresses
  resources :cities

  resources :establishments do
    collection do
      get 'category'
      get 'current_user_establishments'
    end

    member do
      patch 'update_rating'
    end
  end

  namespace :superuser do
  	get 'welcome/index'
  end

  namespace 'v1' do
    resources :establishments do
      collection do
        get 'all_user_establishments'
      end
    end

    resources :cities do
      member do
        get 'establishment_cities'
      end
    end
  end

  patch 'update_user_city', to: 'cities#update_user_city'
  
  root "welcome#index"
end
