class dev::ruby {
  include ruby
  include rubymine

  ruby::version { '2.2.3': }

  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    ruby_version => '*'
  }
}
