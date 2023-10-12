Rails.application.routes.draw do
  root 'rooms#home'
  resources :chats
  resources :messages, only: [:create, :destroy]
  devise_for :users, controllers: { registrations: 'users/registrations' }
end
