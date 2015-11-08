class dev {
  include foreman
  include git
  include gcc
  include heroku
  include iterm
  include memcached
  include mongodb
  include openssl
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
      'phantomjs',
      's3cmd',
      'terminal-notifier',
      'the_silver_searcher',
      'tmux',
      'v8'
    ]:
  }
}
