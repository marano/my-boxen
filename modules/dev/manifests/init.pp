class dev {
  include foreman
  include gcc
  include heroku
  include iterm
  include memcached
  include openssl
  include phantomjs
  include pkgconfig
  include postgresql
  include redis

  include dev::iterm
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
      'mongodb',
      's3cmd',
      'terminal-notifier',
      'the_silver_searcher',
      'tmux',
      'v8'
    ]:
  }

  homebrew::tap {
    'nviennot/tmate':
    } -> package { 'tmate':
    ensure => present,
  }
}
