Rails.application.routes.draw do
  resources :events do
    resources :artists
    resources :venues
    resources :comments
  end
  
  get '/', to: 'application#index'
  post '/login', to: 'sessions#login'
end