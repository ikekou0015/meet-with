Rails.application.routes.draw do
  devise_for :users, controllers: { 
    omniauth_callbacks: 'users/omniauth_callbacks',
     registrations: 'users/registrations' }
  
  root to: 'meet_withs#index'
  resources :meet_withs, only: [:new, :create, :destroy]
  resources :users, only: [:show, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
