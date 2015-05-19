task :production do
  set :bundle_without, [:development, :test]
end

task :staging do
  set :bundle_without, [:development]
  set :rails_env, 'test'
end

task :development do
  set :bundle_without, nil
  set :rails_env, 'development'
end
