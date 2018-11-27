# maintenance page
namespace :deploy do
  namespace :web do
    desc <<-DESC
      $ cap deploy:web:setup
    DESC

    task :setup do
      on roles(:web) do
          # deploy process
      end

    end



  end
end