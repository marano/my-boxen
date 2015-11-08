# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, options)
  options ||= {}

  if path = options.delete(:path)
    mod(name, path: path)
  else
    options[:repo] ||= "boxen/puppet-#{name}"
    mod(name, github_tarball: options[:repo])
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
github 'heroku'
github 'homebrew'
github 'inifile', repo: 'puppetlabs/puppetlabs-inifile'
github 'java'
github 'memcached'
github 'mongodb'
github 'nodejs'
github 'openssl'
github 'osx'
github 'postgresql'
github 'pkgconfig'
github 'redis'
github 'ruby'
github 'rubymine'
github 'stdlib', repo: 'puppetlabs/puppetlabs-stdlib'
github 'steam'
