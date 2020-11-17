Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }           
  root to: 'meet_withs#index'
  resources :meet_withs do
    resources :comments, only: :create
  end
  resources :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
