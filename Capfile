require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/rails'
require 'capistrano/rails/migrations'
require 'capistrano/rails/assets'
require 'capistrano/rbenv'
require 'capistrano/bundler'

require_relative 'lib/autoload/util/slack'

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
