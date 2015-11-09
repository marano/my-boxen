class vundle {
  $user_home      = "/Users/${::boxen_user}"
  $vim_bundle     = "${user_home}/.vim/bundle"
  $vundle         = "${vim_bundle}/Vundle.vim"
  $vundle_install = 'vim +BundleInstall +qa'

  file { $vim_bundle:
    ensure  => directory
  }

  repository { $vundle:
    source  => 'VundleVim/Vundle.vim',
    require => File[$boxen::config::srcdir]
  }

  exec { $vundle_install:
    require => [ Repository[$vundle], Package['vim'] ]
  }

  exec { 'rake make':
    cwd     => "${::user_home}/.vim/bundle/command-t/",
    onlyif  => 'file -d ~/.vim/bundle/command-t',
    require => Exec[$vundle_install]
  }
}
