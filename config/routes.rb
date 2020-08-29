Rails.application.routes.draw do
  resources :events, :venues, :artists
  
  get '/', to: 'application#index'
end