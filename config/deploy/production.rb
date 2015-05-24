set :deploy_user, 'kyoko'
set :deploy_host, 'ec2-52-68-146-101.ap-northeast-1.compute.amazonaws.com'

role :app, ["#{fetch(:deploy_user)}@#{fetch(:deploy_host)}"]
role :web, ["#{fetch(:deploy_user)}@#{fetch(:deploy_host)}"]
role :db, ["#{fetch(:deploy_user)}@#{fetch(:deploy_host)}"]

server fetch(:deploy_host), user: fetch(:deploy_user), roles: %w{web app db}

set :ssh_options, {
  user:          'kyoko',
  keys:          %w(~/.ssh/kyoko.pem),
  forward_agent: true,
}
