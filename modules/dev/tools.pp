class dev::tools {
  include foreman
  include rubymine
  include tmux

  package {
    [
      'aws-elasticbeanstalk',
      'awscli',
      'chromedriver',
      'ctags',
      'ec2-api-tools',
      'elasticsearch',
      'elixir',
      's3cmd',
      'terminal-notifier',
      'the_silver_searcher',
      'v8'
    ]:
  }
}
