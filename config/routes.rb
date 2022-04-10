Rails.application.routes.draw do
  resources :chat_rooms
  root 'landing_page#index'

  #TODO: Change to actual post url when adding real redirect in login
  post '/', to: 'landing_page#index'

  resources :login, only: [:index]
  resources :register, only: [:new, :create]
end
