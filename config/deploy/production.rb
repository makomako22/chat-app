server '52.197.55.61', user: 'ec2-user', roles: %w{app db web,
  ssh_options: {
    port: 22022,
    user: "ec2@user", # overrides user setting above
    keys: %w(~/.ssh/chatapp.pem),
    forward_agent: true}