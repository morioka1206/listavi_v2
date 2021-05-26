Rails.application.routes.draw do
  resources :shops
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
