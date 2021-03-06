default['virti_chef_base']['packages'].tap do |packages|
  packages['install'] = true
  packages['update'] = true

  # Packages Lists
  packages['amazon']['packages'] = %w(
    aws-cli
    ca-certificates
    curl
    git
    gzip
    htop
    mlocate
    net-tools
    openssh-clients
    openssh-server
    openssl
    procps
    sudo
    upstart
    util-linux
    vim-enhanced
    which
  )

  packages['debian']['packages'] = %w(
    awscli
    curl
    git
    gzip
    htop
    mlocate
    net-tools
    openssl
    procps
    sudo
    upstart
    util-linux
    vim
    which
  )

  packages['redhat']['packages'] = %w(
    curl
    git
    gzip
    tree 
    net-tools
    vim-enhanced
  )

  packages['suse']['packages'] = %w(
    awscli
    curl
    git
    gzip
    htop
    mlocate
    net-tools
    openssl
    procps
    sudo
    util-linux
    vim
    which
  )

  packages['windows']['packages'] = %w(
    aws-cli
    powershell
    sysinternals
    git
  )
end

# Debug
message_list = [
  '',
  '** Packages **',
  "Install Base Packages       (#{node['virti_chef_base']['packages']['install']})",
  "Update System Packages      (#{node['virti_chef_base']['packages']['update']})"
]
message_list.each do |message|
  Chef::Log.warn(message)
end

