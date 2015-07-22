Rails.application.routes.draw do
  get '/auth/failure', to: 'api/v1/sessions#failure'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/auth/:provider/callback', to: 'sessions#new'
      get '/signout', to: 'sessions#destroy'
      resources :group, path: 'g', only: [:index, :create, :update] do
        resources :topic, path: 't', only: [:index, :create, :update] do
          resources :idea, path: 'i', only: [:index, :create, :destroy] do
            get 'l', to: 'like#index'
            post 'l/doing', to: 'like#doing'
          end
        end
        get '/invite/doing/:inviter_id', to: 'invite#doing'
        patch '/invite/agree', to: 'invite#agree'
        patch '/invite/denial', to: 'invite#denial'
      end
      get '/g/:id/detail', to: 'group#detail'
      resources :profile, only: [:index]
      patch '/profile', to: 'profile#update'
      get '/profile/enabled', to: 'profile#enabled'
      put '/profile/default_icon', to: 'profile#default_icon'
      resources :notifications, only: [:index]
      get '/asks/rand'
    end
  end
end
