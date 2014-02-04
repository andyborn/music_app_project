MusicApp::Application.routes.draw do
  resources :comments


  resources :songs do
    resources :comments
  end



  resources :users

  get '/login', to: 'sessions#new', as: :login
  get '/logout', to: 'sessions#destroy', as: :logout
  resources :sessions
  
  root to: "users#index"
end
