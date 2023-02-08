Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/search', to: 'search#show'
  # Defines the root path route ("/")
  # root "articles#index"
end
