class dotfiles {
  $dotfiles            = "${boxen::config::srcdir}/setup.bat"
  $setup_dotfiles      = "${boxen::config::srcdir}/setup.bat/link_dotfiles"

  file { $boxen::config::srcdir:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'marano/setup.bat',
    require => File[$boxen::config::srcdir]
  }

  exec { $setup_dotfiles:
    require => Repository[$dotfiles]
  }
}
