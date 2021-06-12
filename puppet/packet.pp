
package { 'vsftpd':
    ensure  => 'installed',
    require => Yumrepo['local_yum'],
  }




