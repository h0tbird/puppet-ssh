#------------------------------------------------------------------------------
# puppet apply 01_ssh.pp --graph
#------------------------------------------------------------------------------

class { 'ssh':
    ensure  => stopped,
    version => present,
}