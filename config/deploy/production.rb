set :stage, :production

# Define roles, user and IP address of deployment server
# role :name, %{[user]@[IP adde.]}
role :app, %w{deployer@localhost}
role :web, %w{deployer@localhost}
role :db,  %w{deployer@localhost}

# Define server(s)
server 'localhost', user: 'deployer', roles: %w{web}

# SSH Options
# See the example commented out section in the file
# for more options.
set :ssh_options, {
    forward_agent: false,
    auth_methods: %w(password),
    password: '1234',
    user: 'deployer',
}