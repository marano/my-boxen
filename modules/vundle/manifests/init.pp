class vundle {
  $user_home  = "/Users/${::boxen_user}"
  $vim_bundle = "${user_home}/.vim/bundle"
  $vundle     = "${vim_bundle}/Vundle.vim"

  file { $vim_bundle:
    ensure  => directory
  }

  repository { $vundle:
    source  => 'VundleVim/Vundle.vim',
    require => File[$boxen::config::srcdir]
  }
}
