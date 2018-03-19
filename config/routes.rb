Rails.application.routes.draw do
  get 'roots/index'

  root to: 'roots#index'

  get '/roots/about', to: 'roots#about', as: 'about'

  devise_for :users

  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]

  resources :users, only: [:index, :show, :update, :edit]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
