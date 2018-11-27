set :stage, :staging

role :app, %w{deployer@localhost}
role :web, %w{deployer@localhost}
role :db,  %w{deployer@localhost}

#

server 'localhost', user: 'deployer', roles: %w{app db web}

set :ssh_options, {
    forward_agent: false,
    auth_methods: %w(password),
    password: '1234',
    user: 'deployer'
}

