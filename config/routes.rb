Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static#home' 

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/signout' => 'sessions#destroy'
  resources :users, only: [:new, :create, :show]

  resources :rides, only: [:create]

  resources :attractions, only: [:new, :create, :show, :index, :edit, :update]
  
end
