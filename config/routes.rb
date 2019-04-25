Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'
  post '/login', to: 'sessions#create'
  resources :posts,          only: [:new, :create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
