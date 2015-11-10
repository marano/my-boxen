class people::marano {
  include art
  include essentials
  include dev
  include gamer

  include iterm2::colors::solarized_dark
  include osx::global::enable_standard_function_keys
  include osx::keyboard::capslock_to_control
  include osx::finder::show_hidden_files
  include osx::finder::unhide_library

  class { 'boxen::security':
    require_password => false
  }

  $dotfiles       = "${boxen::config::srcdir}/setup.bat"
  $setup_dotfiles = "${boxen::config::srcdir}/setup.bat/link_dotfiles"

  repository { $dotfiles:
    source  => 'marano/setup.bat',
    require => File[$boxen::config::srcdir]
  }

  exec { $setup_dotfiles:
    require => Repository[$dotfiles],
    before => Exec[':BundleInstall']
  }
}
