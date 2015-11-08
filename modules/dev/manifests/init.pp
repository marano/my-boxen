class dev {
  include gcc
  include git
  include heroku
  include memcached
  include mongodb
  include nodejs
  include openssl
  include phantomjs
  include postgresql
  include pkgconfig
  include redis
  include ruby

  include dev::tools

  nodejs::version { '4.2.2': }
  nodejs::version { '5.0.0': }

  ruby::version { '2.2.3': }

  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    ruby_version => '*'
  }
}
