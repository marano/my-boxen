class dev {
  include foreman
  include gcc
  include heroku
  include iterm2::stable
  include phantomjs
  include pkgconfig
  include postgresql
  include vundle

  include dev::node
  include dev::ruby

  package {
    [
      'aws-elasticbeanstalk',
      'awscli',
      'chromedriver',
      'ctags',
      'ec2-api-tools',
      'elasticsearch',
      'elixir',
      'git',
      'memcached',
      'mongodb',
      'openssl',
      'redis',
      's3cmd',
      'terminal-notifier',
      'the_silver_searcher',
      'tmux',
      'v8',
      'vim'
    ]:
  }

  homebrew::tap {
    'nviennot/tmate':
    } -> package { 'tmate':
    ensure => present,
  }

  exec { 'brew link openssl --force':
    require => Package['openssl']
  }

  exec { 'auto launch redis':
    command => 'ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents',
    require => Package['redis']
  }

  exec { 'auto launch memcached':
    command => 'ln -sfv /usr/local/opt/memcached/*.plist ~/Library/LaunchAgents',
    require => Package['memcached']
  }

  exec { 'load auto launch services':
    command => 'launchctl load ~/Library/LaunchAgents/',
    require => Exec['auto launch memcached', 'auto launch redis']
  }
}
