set :deploy_user, 'ikyusan'
set :deploy_host, 'unknown'

role :app, ["#{fetch(:deploy_user)}@#{fetch(:deploy_host)}"]
role :web, ["#{fetch(:deploy_user)}@#{fetch(:deploy_host)}"]

server fetch(:deploy_host), user: fetch(:deploy_user), roles: %w{web app}
