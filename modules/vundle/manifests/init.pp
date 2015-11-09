class vundle {
  $user_home      = "/Users/${::boxen_user}"
  $dot_vim        = "${user_home}/.vim"
  $vim_bundle     = "${dot_vim}/bundle"
  $vundle         = "${vim_bundle}/Vundle.vim"
  $vundle_install = "vim -p 'BundleInstall' -p 'qa'"

  file { [$dot_vim, $vim_bundle]:
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
    cwd     => "${user_home}/.vim/bundle/command-t/",
    onlyif  => 'file -d ~/.vim/bundle/command-t',
    require => Exec[$vundle_install]
  }
}
