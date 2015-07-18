task :production do
  set :bundle_without, [:development, :test]
  namespace :deploy do
    before :starting, 'slack:start'
    before :migrate, :db_create
    after :finished, :cleanup
    after :finished, 'unicorn:restart'
    before 'unicorn:restart', 'slack:finish'
  end
end

task :staging do
  set :bundle_without, [:development, :production]
  set :rails_env, 'test'
end

task :development do
  set :bundle_without, [:test, :production]
  set :rails_env, 'development'
end
