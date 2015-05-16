application = 'ikyusan-api'
app_dir = File.expand_path('../../', __FILE__)

working_directory app_dir

listen "#{app_dir}/tmp/sockets/#{application}_unicorn.sock"
pid "#{app_dir}/tmp/pids/#{application}_unicorn.pid"
stdout_path "#{app_dir}/log/#{application}_unicorn.log"
stderr_path "#{app_dir}/log/#{application}_unicorn.log"

cpu_num = `cat /proc/cpuinfo | grep processor`.split("\n").size

worker_processes 3 * cpu_num
timeout 600
preload_app true

before_fork do |server, _worker|
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection.disconnect!
  end

  old_pid = "#{server.config[:pid]}.oldbin"
  if old_pid != server.pid
    begin
      Process.kill :QUIT, File.read(old_pid).to_i
    rescue Errno::ENOENT, Errno::ESRCH
      nil
    end
  end
end

after_fork do |_server, worker|
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
  end
end
