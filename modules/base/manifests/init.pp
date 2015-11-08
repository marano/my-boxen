class base {
  include chrome
  include inifile
  include java

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
      'wget'
    ]:
  }
}
