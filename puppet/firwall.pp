
node 'stapp01.stratos.xfusioncorp.com'{

firewall_node1
}

node 'stapp02.stratos.xfusioncorp.com' {

firewall_node2
}

node 'stapp03.stratos.xfusioncorp.com' {

include firewall_node3

}




class firewall_node1 {
 firewalld_rich_rule { 'Open all incoming connection for 8083/tcp port on Agent1':
  ensure => present,
  zone   => 'public',
  log => {
    'level' => 'debug',
    'prefix' => 'puppetFirewallD'
  },
  port => {
   'port' => 8083,
   'protocol' => 'tcp'
  },
  action  => 'accept',
 }
}

class firewall_node2 {
 firewalld_rich_rule { 'Open all incoming connection for 9007/tcp port on Agent2':
  ensure => present,
  zone   => 'public',
  log => {
    'level' => 'debug',
    'prefix' => 'puppetFirewallD'
  },
  port => {
   'port' => 9007,
   'protocol' => 'tcp'
  },
  action  => 'accept',
 }
}
class firewall_node3 {
 firewalld_rich_rule { 'Open all incoming connection for 8097/tcp port on Agent3':
  ensure => present,
  zone   => 'public',
  log => {
    'level' => 'debug',
    'prefix' => 'puppetFirewallD'
  },
  port => {
   'port' => 8097,
   'protocol' => 'tcp'
  },
  action  => 'accept',
 }
}


































class firewall_node1 {
  firewalld_port { 'Open port 6400 in the public zone':
    ensure   => present,
    zone     => 'public',
    port     => 6400,
    protocol => 'tcp',
  }
}

class { 'firewalld': }
class firewall_node2 {
  firewalld_port { 'Open port 6400 in the public zone':
    ensure   => present,
    zone     => 'public',
    port     => 6400,
    protocol => 'tcp',
  }
}

class { 'firewalld': }
class firewall_node3 {
  firewalld_port { 'Open port 6400 in the public zone':
    ensure   => present,
    zone     => 'public',
    port     => 6400,
    protocol => 'tcp',
  }
}

