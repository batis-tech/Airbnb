Rails.application.routes.draw do
  resources :apprtments
  devise_for :users
  devise_for :hosters, path: 'hoster'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
