class dev {
  include foreman
  include git
  include gcc
  include heroku
  include memcached
  include mongodb
  include nodejs
  include openssl
  include pkgconfig
  include postgresql
  include redis
  include ruby
  include rubymine

  include dev::tools

  nodejs::version { '4.2.2': }
  nodejs::version { '5.0.0': }

  ruby::version { '2.2.3': }

  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    ruby_version => '*'
  }

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
