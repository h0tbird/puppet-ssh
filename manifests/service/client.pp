#------------------------------------------------------------------------------
# Class: ssh::service::client
#
#   This class is part of the ssh module.
#   You should not be calling this class.
#   The delegated class is Class['ssh'].
#
#   Marc Villacorta <marc.villacorta@gmail.com>
#   2011-11-19
#
#------------------------------------------------------------------------------
class ssh::service::client inherits ssh {

  if !empty($client_services) {
    service { $client_services:
      ensure  => $ensure,
      enable  => $ensure ? {
        'running' => true,
        'stopped' => false,
      }
    }
  }
}
