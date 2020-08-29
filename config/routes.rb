Rails.application.routes.draw do
  resources :comments
  resources :events
  resources :users
  resources :venues
  resources :artists
  
  get '/', to: 'application#index'
  post '/login', to: 'sessions#login'
end