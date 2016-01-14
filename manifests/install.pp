# Installatron installer
class installatron::install inherits installatron {
  # Install installatron manually, as this is the only method to ensure that
  # this Puppet module works on all operating systems and control panels.
  exec { 'installatron-install':
    cwd => '/usr/src',
    command => '/usr/bin/wget -N https://data.installatron.com/installatron-plugin.sh && /usr/bin/chmod +x /usr/src/installatron-plugin.sh && /usr/bin/sh /usr/src/installatron-plugin.sh -f',
    creates => '/usr/local/installatron/installatron',
    timeout => 0,
  }
}