class base {
  include inifile
  include java
  include vundle

  include base::cloud
  include base::osx

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
      'skype',
      'transmission',
      'vlc'
    ]: provider => 'brewcask'
  }

  appstore::app { 'Evernote':       source => 'evernote/id406056744' }
  appstore::app { 'Shush':          source => 'shush-microphone-manager/id496437906' }
  appstore::app { 'Slack':          source => 'slack/id803453959' }
  appstore::app { 'The Unarchiver': source => 'the-unarchiver/id425424353' }
}
