set :application, "Eyish"
set :deploy_to, "YOUR_PATH"
set :scm, :git
set :repository,  "YOUR_URL"
set :branch, "master"

set :user, 'YOUR_USER_NAME"
set :ssh_options, { :forward_agent => true }
default_run_options[:pty] = true

role :app, "YOUR_DOMAIN"
role :web, "YOUR_DOMAIN"
role :db,  "YOUR_DOMAIN" :primary => true

namespace :deploy do
  desc "Restarting mod rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do; end
  end
end
