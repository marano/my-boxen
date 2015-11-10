class vundle {
  $user_home             = "/Users/${::boxen_user}"
  $dot_vim               = "${user_home}/.vim"
  $vim_bundle            = "${dot_vim}/bundle"
  $vundle                = "${vim_bundle}/Vundle.vim"
  $vundle_install_script = '/tmp/vundle_install'
  $vundle_install        = "vim -s ${$vundle_install_script}"

  file { [$dot_vim, $vim_bundle]:
    ensure  => directory
  }

  repository { $vundle:
    source  => 'VundleVim/Vundle.vim',
    require => File[$vim_bundle]
  }

  file { $vundle_install_script:
    ensure  => file,
    content => template('vundle/vundle_install')
  }

  exec { $vundle_install:
    require => [
      Package['vim'],
      Repository[$vundle],
      File[$vundle_install_script]
    ]
  }

  exec { 'rbenv local system && rbenv rehash && bundle && rake make':
    cwd     => "${user_home}/.vim/bundle/command-t/",
    onlyif  => 'file -d ~/.vim/bundle/command-t',
    require => Exec[$vundle_install]
  }
}
