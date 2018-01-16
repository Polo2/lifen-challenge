Rails.application.routes.draw do

  root to: 'pages#home'
  resources :workers, only: [:new, :edit, :create]
  resources :shifts, only: [:new, :edit, :create, :show]

  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
