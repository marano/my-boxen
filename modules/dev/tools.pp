class dev::tools {
  include foreman
  include rubymine
  include tmux

  package {
    [
      'aws-elasticbeanstalk',
      'awscli',
      'ctags',
      'ec2-api-tools',
      'elasticsearch',
      's3cmd'
    ]:
  }
}
