class people::marano {
  include art
  include essentials
  include dev
  include gamer

  include iterm2::colors::solarized_dark

  $dotfiles       = "${boxen::config::srcdir}/setup.bat"
  $setup_dotfiles = "${boxen::config::srcdir}/setup.bat/link_dotfiles"

  repository { $dotfiles:
    source  => 'marano/setup.bat',
    require => File[$boxen::config::srcdir]
  }

  exec { $setup_dotfiles:
    require => Repository[$dotfiles]
  }
}
