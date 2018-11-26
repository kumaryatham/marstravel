set :application, 'marstravel-app'
set :repo_url, 'git@git-server.com:my-github-username/my-app.git'
set :rbenv_ruby, '2.1.0'
desc 'Restart application'
task :restart do
  on roles(:app), in: :sequence, wait: 5 do
    execute "service thin restart"  ## -> line you should add
  end
end
after :publishing, :restart