Rails.application.routes.draw do

  root to: 'main#home'

  get 'main/home'

  get '/admin', to: 'exchange_updates#new', as: 'admin'
  post '/admin', to: 'exchange_updates#create', as: 'exchange_updates'


  mount ActionCable.server => '/cable'
end
