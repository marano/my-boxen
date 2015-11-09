class dev::node {
  include nodejs

  nodejs::version { '5.0.0': }

  class { 'nodejs::global':
    version => '5.0.0'
  }

  npm_module { 'bower for all nodes':
    module       => 'bower',
    node_version =>  '*'
  }
}
