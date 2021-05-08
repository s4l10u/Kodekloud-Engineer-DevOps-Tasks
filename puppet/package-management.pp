node 'stapp01.stratos.xfusioncorp.com','stapp02.stratos.xfusioncorp.com','stapp03.stratos.xfusioncorp.com' {
include tomcat_package
}

class tomcat_package {
    package {'tomcat':
        ensure => installed,
    }
    service { 'tomcat':
        ensure => running,
        enable => true,
    }

}

