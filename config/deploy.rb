set :application, 'ikyusan-api'
set :repo_url, 'https://github.com/sekainohajimari/ikyusan-api.git'
set :branch, ENV['BRANCH'] || 'master'
set :deploy_to, "/var/www/#{fetch(:application)}"
set :scm, :git
set :keep_releases, 3
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle}

set :rbenv_type, :system
set :rbenv_ruby, '2.2.2'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all

set :bundle_jobs, 4

# namespace :deploy do
#   namespace :assets do
#     task :precompile, :roles => :web, :except => { :no_release => true } do
#       # from = source.next_revision(current_revision)
#       logger.info "Skipping asset pre-compilation because there were no asset changes"
#     end
#   end
# end
