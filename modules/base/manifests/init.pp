class base {
  include inifile
  include java
  include vundle

  package {
    [
      'findutils',
      'gnu-tar',
      'grep',
      'htop-osx',
      'p7zip',
      'iftop',
      'pstree',
      'qt',
      'slurm',
      'ssh-copy-id',
      'tmate',
      'vim',
      'wget'
    ]:
  }

  package {
    [
      'istat-menus',
      'google-chrome',
      'little-snitch',
      'transmission',
      'vlc'
    ]: provider => 'brewcask'
  }
}
