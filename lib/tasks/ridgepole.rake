namespace :db do
  Rake::Task['db:migrate'].clear

  DATABASE_CONFIG = 'config/database.yml'
  SCHEMA_CONFIG = 'db/schemas/Schemafile'

  ENV['RAILS_ENV'] ||= 'development'

  desc "db migration by ridgepole"
  task :migrate => :environment do
    sh "bundle exec ridgepole -E#{ENV['RAILS_ENV']} -c #{DATABASE_CONFIG} --apply -f #{SCHEMA_CONFIG}"
    sh 'bin/rake annotate_models'
  end

  desc "db migration dryrun by ridgepole"
  task 'migrate:dryrun' => :environment do
    sh "bundle exec ridgepole -E#{ENV['RAILS_ENV']} -c #{DATABASE_CONFIG} --apply --dry-run -f #{SCHEMA_CONFIG}"
  end
end
