#------------------------------------------------------------------------------
# puppet apply --modulepath="$(pwd)/../.." --parser=future 01_ssh.pp
#------------------------------------------------------------------------------

class { 'ssh':
  ensure  => stopped,
  version => present,
}
