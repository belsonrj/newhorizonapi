Rails.application.routes.draw do
  resources :shows, :venues, :artists
  
  #get '/', to: 'application#index'
  #get '/shows', to: 'shows#show'
end