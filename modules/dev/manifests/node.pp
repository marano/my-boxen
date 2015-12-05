class dev::node {
  $nvm_folder = "/Users/${::boxen_user}/.nvm"

  repository { $nvm_folder:
    source => 'creationix/nvm',
    notify => Exec['checkout latest nvm version']
  }

  exec { 'checkout latest nvm version':
    command => 'git checkout `git describe --abbrev=0 --tags`',
    cwd     => $nvm_folder
  }
}
