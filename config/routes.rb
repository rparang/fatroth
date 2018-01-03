Rails.application.routes.draw do
  
  # Support old routes! List these first, otherwise the entries controller
  # looks for the slug value and fails
  get '/entries/1-backdoor-roth-ira-ultimate-fidelity-step-by-step-guide', to: redirect('/backdoor-roth-ira-ultimate-fidelity-step-by-step-guide', status: 301)
  
  # Verify for Microsoft's Bing search
  get '/BingSiteAuth.xml' => 'pages#bing_verify'

  root :to => "entries#index"

  resources :entries, :path => '/'
  resources :users
  resources :sessions

  get 'sessions/new'
  get 'users/new'
  get '/logout' => 'sessions#destroy'

end
