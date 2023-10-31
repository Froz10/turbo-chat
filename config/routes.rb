Rails.application.routes.draw do
  root 'chat_rooms#index'
  resources :chat_rooms do
    resources :messages
  end
  devise_for :users, controllers: { registrations: 'users/registrations' }
end
