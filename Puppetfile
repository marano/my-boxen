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

github 'boxen',       '3.11.0'
github 'module_data', '0.0.4', repo: 'ripienaar/puppet-module-data'

github 'appstore',    '0.0.7', repo: 'xdissent/puppet-appstore'
github 'brewcask',    '0.0.6'
github 'foreman',     '1.2.0'
github 'gcc',         '3.0.2'
github 'git',         '2.7.92'
github 'googledrive', '1.0.2'
github 'heroku',      '2.1.1'
github 'homebrew',    '2.0.0'
github 'inifile',     '1.0.0'
github 'iterm2',      '1.2.5'
github 'java',        '1.8.4'
github 'macdefaults', '0.0.1', repo: 'pebbleit/puppet-macdefaults'
github 'memcached',   '2.0.0'
github 'nodejs',      '5.0.5'
github 'openssl',     '1.0.0'
github 'osx',         '2.8.0'
github 'phantomjs',   '3.0.0'
github 'postgresql',  '4.0.1'
github 'pkgconfig',   '1.0.0'
github 'redis',       '3.2.0'
github 'repository',  '2.4.1'
github 'ruby',        '8.5.3'
github 'stdlib',      '4.9.0', repo: 'puppetlabs/puppetlabs-stdlib'
github 'sysctl',      '1.0.1'
github 'sudo',        '1.0.0'
