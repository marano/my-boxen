class base::osx {
  include macdefaults
  include osx::dock::autohide
  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_hidden_files
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::unhide_library
  include osx::global::enable_standard_function_keys
  include osx::keyboard::capslock_to_control
  include osx::no_network_dsstores
  include osx::safari::enable_developer_mode
  include osx::software_update

  class { 'boxen::security':
    require_password => false
  }
}
