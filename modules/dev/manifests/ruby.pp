class dev::ruby {
  include ruby

  package {
    [
      'rubymine',
    ]: provider => 'brewcask'
  }

  ruby::version { '2.2.3': }

  class { 'ruby::global':
    version => '2.2.3'
  }

  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    ruby_version => '*'
  }
}
