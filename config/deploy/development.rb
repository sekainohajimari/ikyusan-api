set :deploy_user, 'vagrant'
set :deploy_host, '192.168.33.10'
# set :rails_env, 'development'

role :app, ["#{fetch(:deploy_user)}@#{fetch(:deploy_host)}"]
role :web, ["#{fetch(:deploy_user)}@#{fetch(:deploy_host)}"]

server fetch(:deploy_host), user: fetch(:deploy_user), roles: %w{web app}
