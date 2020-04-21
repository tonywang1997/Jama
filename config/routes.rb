Rails.application.routes.draw do
  resources :doors
  resources :event_instances
  resources :events
  resources :heroes
  resources :levels
  resources :games
  resources :heroes
  resources :packages
  resources :doors
  resources :users
  resources :gamestates
  resources :sessions
  get  '/gamestate', to: 'gamestates#save'
  get 'main/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'main#index'
  #post 'levels/doors', to: 'levels#doors'
  get   'level-doors/:id', to: 'levels#doors'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get  '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/gamestates/reset/:id', to: 'gamestates#reset'
  get '/gamestates/partial/:id', to: 'gamestates#partial'
  get '/games', to: 'games#index'
  get '/publishedgames', to: 'games#published'
  get '/doors/open/:id', to: 'doors#open'
  #game creation
  get '/creategame', to: 'games#new'
  get '/allgames', to: 'games#all'
  get '/addlevel/:game_id' , to: 'levels#new', as: 'addlevel'
  get '/addevent/:level_id/:game_id' , to: 'events#new', as: 'addevent'

  get '/organize/:game_id' , to: 'levels#organize', as: 'organizelevel'
  
end
