Rails.application.routes.draw do
  devise_for :users, controllers: { 
    omniauth_callbacks: 'users/omniauth_callbacks',
     registrations: 'users/registrations' }
  
  root to: 'meet_withs#index'
  resources :meet_withs, only: [:new, :create, :destroy]
  resources :users, only: [:show, :new]
  resources :messages, only: [:index, :create]
  end
  
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
