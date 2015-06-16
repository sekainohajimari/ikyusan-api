Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/auth/:provider/callback', to: 'sessions#new'
      get '/signout', to: 'sessions#destroy'
      resources :group, path: 'g', only: [:index, :create, :edit] do
        resources :topic, path: 't', only: [:index, :create, :edit] do
          resources :idea, path: 'i', only: [:index, :create, :destroy] do
            get 'l', to: 'like#index'
            post 'l/doing', to: 'like#doing'
          end
        end
        get '/invite/doing/:inviter_id', to: 'invite#doing'
        get '/invite/agree', to: 'invite#agree'
      end
      get '/g/:id/detail', to: 'group#detail'
      resources :profile, only: [:index]
      get '/profile/edit', to: 'profile#edit'
      get '/profile/enabled', to: 'profile#enabled'
      resources :notifications, only: [:index]
    end
  end
end
