Rails.application.routes.draw do
  resources :cities
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  
  root "welcome#index"
end
