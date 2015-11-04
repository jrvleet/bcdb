Rails.application.routes.draw do
  root 'welcome#index'

  resources :users, only: [:new, :create, :show, :edit, :update] 
  resources :welcome, only: [:index]
  resources :chicks, only: [:index, :new, :show, :create, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
end
