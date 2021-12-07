Rails.application.routes.draw do
  get 'admin/index'
  resources :apprtments
  resources :admin
  devise_for :users
  devise_for :hosters, path: 'hoster'
  root 'home#index'
  get 'hoster'=>'owners#index', as: :hoster
  get 'books'=>'home#book', as: :book
  get 'list/:id'=>'home#list', as: :list
  get 'reserve'=>'home#reserve', as: :reserve
  post 'confirm'=>'home#confirm', as: :confirm
  get 'calendar'=>'admin#calendar', as: :calendar

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
