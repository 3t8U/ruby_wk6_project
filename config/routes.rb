Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  resources :restaurants
  resources :shops
  resources :parks
end
