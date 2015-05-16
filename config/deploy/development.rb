set :deploy_user, 'vagrant'
set :deploy_host, '192.168.33.10'

role :app, ["#{fetch(:deploy_user)}@#{fetch(:deploy_host)}"]
role :web, ["#{fetch(:deploy_user)}@#{fetch(:deploy_host)}"]
role :db, ["#{fetch(:deploy_user)}@#{fetch(:deploy_host)}"]

server fetch(:deploy_host), user: fetch(:deploy_user), roles: %w{web app db}
