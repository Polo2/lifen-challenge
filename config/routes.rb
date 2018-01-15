Rails.application.routes.draw do

  get 'workers/new'


  root to: 'pages#home'
  resources :workers, only: [:new, :edit, :create]

  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
