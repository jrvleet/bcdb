Rails.application.routes.draw do
  root 'chicks#index'
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy] 
  resources :welcome, only: [:index]
  resources :chicks, only: [:index, :new, :show, :create, :edit, :update, :destroy] do
  	resources :comments, only: [:create, :new, :destroy]
  end
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
end
