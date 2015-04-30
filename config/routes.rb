Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    get '/auth/:provider/callback', to: 'sessions#new'
    resources :hoge, only: ['index']
  end
end
