class dev::node {
  include nodejs

  nodejs::version { '4.2.2': }
  nodejs::version { '5.0.0': }

  class { 'nodejs::global':
    version => '4.2.2'
  }

  npm_module { 'bower for all nodes':
    module       => 'bower',
    node_version =>  '*'
  }
}
