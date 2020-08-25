Rails.application.routes.draw do
  resources :comments
  resources :events
  resources :users
  resources :venues
  resources :artists
  
  get '/test', to: 'application#test'
end