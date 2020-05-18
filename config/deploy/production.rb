server '52.197.55.61', user: 'ec2-user', roles: %w{app db web},
  ssh_options: {
    port: 22,
    user: "ec2@user",
    keys: %w(~/.ssh/chatapp.pem),
    forward_agent: true
  }
