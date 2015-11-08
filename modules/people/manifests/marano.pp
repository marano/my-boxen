class people::marano {

  include base
  include base::osx
  include gamer
  include dev
  include dev::tools

  $home_ir       = "/Users/${::boxen_user}"
  $code_dir      = "${home_dir}/code"
  $dotfiles      = "${code_dir}/setup.bat"
  $setup_dotfiles      = "${code_dir}/setup.bat/link_dotfiles"

  file { $code_dir:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'marano/setup.bat',
    require => File[$code_dir]
  }

  exec { $setup_dotfiles:
    require => Repository[$dotfiles]
  }
}
