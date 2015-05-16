task :production do
  set :bundle_without, [:development, :test]
end

task :staging do
  set :bundle_without, [:test]
  set :rails_env, 'staging'
end

task :development do
  set :bundle_without, nil
  set :rails_env, 'development'
end
