set :application, 'marstravel'
set :scm, :git
set :repo_url, 'https://github.com/kumaryatham/marstravel.git'

# Define where to put your application code
set :deploy_to, "/home/kumar/apps/marstravel"

set :pty, true

set :format, :pretty

# Set the post-deployment instructions here.
# Once the deployment is complete, Capistrano
# will begin performing them as described.
# To learn more about creating tasks,
# check out:
# http://capistranorb.com/
