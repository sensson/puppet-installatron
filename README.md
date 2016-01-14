# installatron

This module is used to configure Installatron. It supports all operating systems and control panels.

## Examples

### Installation and configuration

This will install Installatron if it has not been installed yet.

```
class { 'installatron': }
```

#### Configuration

Installatron does have a command line option to set and change configuration settings, but it's not
very easy to combine with Puppet at the moment. [Installatron's Advanced Usage page](http://installatron.com/docs/admin/advancedusage#multiserver)
describes the files that you may need to change to manage your configuration with Puppet.

The following example can be used for DirectAdmin servers:

```
file { '/home/admin/.appdata':
  ensure => 'directory',
} ->
file { '/home/admin/.appdata/.settings':
  ensure => present,
  mode => '0600',
  owner => 'admin',
  group => 'admin',
  content => template('profiles/directadmin/installatron-settings.erb'),
}
```

