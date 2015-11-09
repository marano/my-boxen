class dotfiles {
  $dotfiles            = "${boxen::config::srcdir}/setup.bat"
  $setup_dotfiles      = "${boxen::config::srcdir}/setup.bat/link_dotfiles"

  repository { $dotfiles:
    source  => 'marano/setup.bat',
    require => File[$boxen::config::srcdir]
  }

  exec { $setup_dotfiles:
    require => Repository[$dotfiles]
  }
}
