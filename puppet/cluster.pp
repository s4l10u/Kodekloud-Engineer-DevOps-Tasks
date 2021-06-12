class local_yum_repo {

  # configure the repo we want to use
yumrepo { 'local_yum':
    enabled  => 1,
    descr    => 'Local repo holding company application packages',
    baseurl  => 'file:///packages/downloaded_rpms',
    gpgcheck => 0,
  }

}

package { 'vsftpd':
    ensure  => 'installed',
    require => Yumrepo['local_yum'],
  }



node 'stapp01.stratos.xfusioncorp.com', 'stapp02.stratos.xfusioncorp.com', 'stapp03.stratos.xfusioncorp.com' {
include local_yum_repo

}


