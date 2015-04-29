Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#new'

  # resources :hoge, only: ['index']
end
