# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/login', to: 'sessions#create'
  resources :posts, only: %i[new create index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
