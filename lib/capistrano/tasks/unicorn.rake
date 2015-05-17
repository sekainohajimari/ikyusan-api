namespace :unicorn do
  task :enviroment do
    set :unicorn_pid, "#{shared_path}/tmp/pids/#{fetch(:application)}_unicorn.pid"
    set :unicorn_config, "#{current_path}/config/unicorn.rb"
  end

  def start_unicorn
    within current_path do
      with bundle_gemfile: "#{current_path}/Gemfile" do
        execute :bundle, :exec, :unicorn_rails, "-c #{fetch :unicorn_config} -E #{fetch(:rails_env)} -D"
      end
    end
  end

  def stop_unicorn
    send_signal(:QUIT)
  end

  def send_signal(signal)
    execute :kill, "-s #{signal} $(< #{fetch :unicorn_pid})"
  end

  desc "Start unicorn"
  task start: :enviroment do
    on roles(:app) do
      start_unicorn
    end
  end

  desc "Stop unicorn"
  task stop: :enviroment do
    on roles(:app) do
      stop_unicorn
    end
  end

  desc "Restart unicorn with USR2"
  task restart: :enviroment do
    on roles(:app) do
      if test(" [ -f #{fetch :unicorn_pid} ]")
        if test :pgrep, '-f', "'unicorn'"
          execute :rm, "-f #{fetch :unicorn_pid}"
          start_unicorn
        else
          send_signal(:USR2)
        end
      else
        start_unicorn
      end
    end
  end
end

after "deploy:finished", "unicorn:restart"
