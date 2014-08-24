Rails.application.routes.draw do

  get 'sessions/new'
  get 'users/new'

  get '/logout' => 'sessions#destroy'

  root :to => "entries#index"

  resources :entries
  resources :users
  resources :sessions
end
