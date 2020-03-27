Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :establishments

  resources :addresses
  resources :cities
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  get 'welcome/set_user_role'
  
  root "welcome#index"
end
