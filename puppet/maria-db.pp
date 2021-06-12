node 'stdb01.stratos.xfusioncorp.com' {
include mysql_database
}

class mysql_database {
    package {'mariadb-server':
        ensure => installed,
    }
    service { 'mariadb':
        ensure => running,
        enable => true,
    }
    mysql::db { 'kodekloud_db7':
    user => 'kodekloud_top',
    password => 'BruCStnMT5',
    host => 'localhost',
    grant => ['ALL'],
    }
}

