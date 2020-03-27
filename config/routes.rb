Rails.application.routes.draw do
  resources :establishments
  resources :addresses
  resources :cities
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  get 'welcome/set_user_role'
  
  root "welcome#index"
end
