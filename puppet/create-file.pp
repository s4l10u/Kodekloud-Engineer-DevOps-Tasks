node 'stapp01.stratos.xfusioncorp.com' {
include puppet_file
}

class puppet_file {
  file { ' /opt/itadmin/media.txt':
    ensure  => 'present',
  }
}

