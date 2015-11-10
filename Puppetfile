# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options = args.last.is_a?(Hash) ? args.last : {}
  if path = options.delete(:path)
    mod(name, path: path)
  else
    version = args.first.is_a?(String) ? args.first : nil
    options[:repo] ||= "boxen/puppet-#{name}"
    if version
      mod(name, version, github_tarball: options[:repo])
    else
      mod(name, github_tarball: options[:repo])
    end
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod "puppet-#{name}", path: "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

github 'boxen'
github 'module_data', repo: 'ripienaar/puppet-module-data'

github 'appstore', repo: 'xdissent/puppet-appstore'
github 'brewcask'
github 'foreman'
github 'gcc'
github 'git'
github 'googledrive'
github 'heroku'
github 'homebrew'
github 'inifile'
github 'iterm2'
github 'java'
github 'macdefaults', repo: 'pebbleit/puppet-macdefaults'
github 'memcached'
github 'nodejs'
github 'openssl'
github 'osx'
github 'phantomjs'
github 'postgresql'
github 'pkgconfig'
github 'redis'
github 'repository'
github 'ruby'
github 'stdlib', repo: 'puppetlabs/puppetlabs-stdlib'
github 'sysctl'
github 'sudo'
