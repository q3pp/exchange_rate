Rails.application.routes.draw do

  root to: 'main#home'

  get 'main/home'

  get '/admin', to: 'exchange_updates#new', as: 'admin'
  post '/admin', to: 'exchange_updates#create', as: 'exchange_updates'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  mount ActionCable.server => '/cable'
end
