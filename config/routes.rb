Rails.application.routes.draw do
  resources :artists
  resources :venues
  resources :shows
  resources :shows do
    resources :artists, only: [:index, :show, :create, :destroy]
    resources :venues, only: [:index, :show, :create, :destroy]
  end
  #get '/', to: 'application#index'
  #get '/shows', to: 'shows#show'
end