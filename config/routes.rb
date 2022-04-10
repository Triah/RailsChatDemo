Rails.application.routes.draw do
  resources :chat_rooms do 
    post 'send_message'
  end
  root 'landing_page#index'

  #TODO: Change to actual post url when adding real redirect in login
  post '/', to: 'landing_page#index'
  post 'login', to: 'login#login'
  post 'logout', to: 'login#logout'

  resources :login, only: [:index]
  resources :register, only: [:new, :create]
end
