# == Route Map
#

Rails.application.routes.draw do
  get 'wines/index'
  resources :shops
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'wines/top'
  resources :wines do
    collection do
      get 'search'
    end
  end
end
