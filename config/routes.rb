Rails.application.routes.draw do
  resources :event_intances
  resources :events
  resources :games
  resources :packages
  resources :games
  resources :levels
  resources :events
  resources :doors
  resources :heroes
  resources :users
  resources :gamestates
  resources :sessions
  get  '/gamestate', to: 'gamestates#save'
  get 'main/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'main#index'
  post 'levels/doors', to: 'levels#doors'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get  '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/games', to: 'games#index'
  get '/publishedgames', to: 'games#published'
  
  #game creation
  get '/creategame', to: 'games#new'
  get '/allgames', to: 'games#all'
  get '/addlevel/:game_id' , to: 'levels#new', as: 'addlevel'
  get '/addlogic/:game_id' , to: 'games#addlogic', as: 'addlogic'
  
end
