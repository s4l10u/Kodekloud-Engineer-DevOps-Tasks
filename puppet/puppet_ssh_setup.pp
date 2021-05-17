node 'stapp01.stratos.xfusioncorp.com'{
include ssh_node1
}
node 'stapp02.stratos.xfusioncorp.com'{
include ssh_node2
}
node 'stapp03.stratos.xfusioncorp.com'{
include ssh_node3
}


class ssh_node1{
ssh_authorized_key { 'root@jump_host':
  ensure => present,
  user   => 'tony',
  type   => 'ssh-rsa',
  key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDCE0B+5P7ushFHDEtqP+CWzG56A/bDg+MHEabc5aunFFuDtvtmc8lXKVw8OWFPC7fGXaToaFn5NvlZ4+ANNM3KpcSnpG6uBt/Z/2Sk/WtKeLW18JtiPc9C3/GaweZsdVztxY9CR06Ts52MEabDCXH1gbeKWOUbK30XnywkPUxgTfnxSPergHzx7wmIkngxsw3JdbGq/TdSc7KWt/bC6uMkrYCaB3x1+1F8k7oqBI5xzhaMjMl3P1RyQ3ekvg0vG4ag4VMY+0bimVxA9HGpVsalYFEsirqlaETfsub6GZfZX7MCXI4lr++3/e28vh32HYW+E3rJc9FgPVtvjw7dVsJ3',
}
}

class ssh_node2{
ssh_authorized_key { 'root@jump_host':
  ensure => present,
  user   => 'steve',
  type   => 'ssh-rsa',
  key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDCE0B+5P7ushFHDEtqP+CWzG56A/bDg+MHEabc5aunFFuDtvtmc8lXKVw8OWFPC7fGXaToaFn5NvlZ4+ANNM3KpcSnpG6uBt/Z/2Sk/WtKeLW18JtiPc9C3/GaweZsdVztxY9CR06Ts52MEabDCXH1gbeKWOUbK30XnywkPUxgTfnxSPergHzx7wmIkngxsw3JdbGq/TdSc7KWt/bC6uMkrYCaB3x1+1F8k7oqBI5xzhaMjMl3P1RyQ3ekvg0vG4ag4VMY+0bimVxA9HGpVsalYFEsirqlaETfsub6GZfZX7MCXI4lr++3/e28vh32HYW+E3rJc9FgPVtvjw7dVsJ3',
}
}

class ssh_node3{
ssh_authorized_key { 'root@jump_host':
  ensure => present,
  user   => 'banner',
  type   => 'ssh-rsa',
  key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDCE0B+5P7ushFHDEtqP+CWzG56A/bDg+MHEabc5aunFFuDtvtmc8lXKVw8OWFPC7fGXaToaFn5NvlZ4+ANNM3KpcSnpG6uBt/Z/2Sk/WtKeLW18JtiPc9C3/GaweZsdVztxY9CR06Ts52MEabDCXH1gbeKWOUbK30XnywkPUxgTfnxSPergHzx7wmIkngxsw3JdbGq/TdSc7KWt/bC6uMkrYCaB3x1+1F8k7oqBI5xzhaMjMl3P1RyQ3ekvg0vG4ag4VMY+0bimVxA9HGpVsalYFEsirqlaETfsub6GZfZX7MCXI4lr++3/e28vh32HYW+E3rJc9FgPVtvjw7dVsJ3',
}
}
