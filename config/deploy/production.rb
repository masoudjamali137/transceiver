set :stage, :production
server '46.100.54.131', user: 'deploy', roles: %w{web app db}