Rails.application.routes.draw do
  root 'chicks#index'
  resources :users, only: [:new, :create, :show, :edit, :update] 
  resources :welcome, only: [:index]
  resources :chicks, only: [:index, :new, :show, :create, :edit, :update, :destroy] do
  	resources :comments, only: [:create, :new]
  end
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
end
