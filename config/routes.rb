Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :boards
  get 'top/index'
  get '/signup', to: 'users#new'
  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
