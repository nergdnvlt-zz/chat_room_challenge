Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chat_rooms, only: [:show]

  mount ActionCable.server => '/cable'
end
