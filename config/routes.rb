Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chat_rooms, only: [:index, :show]

  root 'welcome#index'

  get '/login', to: 'welcome#show', as: 'login'
  post '/login', to: 'welcome#create'

  mount ActionCable.server => '/cable'
end
