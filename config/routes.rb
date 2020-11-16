Rails.application.routes.draw do
  get 'meet_withs/index'
  devise_for :users
  root to: 'meet_withs#index'
  resources :meet_withs
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
