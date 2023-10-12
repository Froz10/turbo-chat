Rails.application.routes.draw do
  root 'chats#index'
  resources :chats
  resources :messages, only: [:create, :destroy]
  devise_for :users, controllers: { registrations: 'users/registrations' }
end
