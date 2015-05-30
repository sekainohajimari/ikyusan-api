namespace :slack do
  desc 'Notify deploy started to slack'
  task :start do
    on roles(:app) do
      Util::Slack.notify(
        channel: '#notifications',
        username: 'capistrano',
        message: "deploy satrting enviroment #{fetch :rails_env} for #{fetch :application} ..."
      )
    end
  end

  task :finish do
    on roles(:app) do
      Util::Slack.notify(
        channel: '#notifications',
        username: 'capistrano',
        message: "deploy finished enviroment #{fetch :rails_env} for #{fetch :application}. Bye!!"
      )
    end
  end
end
