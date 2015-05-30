task :production do
  set :bundle_without, [:development, :test]
  namespace :deploy do
    before :starting, 'slack:start'
    before :migrate, :db_create
    after :finished, 'unicorn:restart'
    before 'unicorn:restart', 'slack:finish'
  end
end

task :staging do
  set :bundle_without, [:development]
  set :rails_env, 'test'
end

task :development do
  set :bundle_without, nil
  set :rails_env, 'development'
end
