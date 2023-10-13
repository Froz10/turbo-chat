Rails.application.routes.draw do
  root 'chats#index'
  resources :chats
  resources :messages
  devise_for :users, controllers: { registrations: 'users/registrations' }
end
