Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/auth/:provider/callback', to: 'sessions#new'
      get '/signout', to: 'sessions#destroy'
      resources :group, only: [:index, :create, :edit]
    end
  end
end
