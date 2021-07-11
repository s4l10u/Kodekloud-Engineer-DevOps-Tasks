node "stapp01.stratos.xfusioncorp.com","stapp02.stratos.xfusioncorp.com",
"stapp03.stratos.xfusioncorp.com" {
        include archive_module
}

class archive_module {

        archive { '/usr/src/blog/blog.zip':
                ensure => present,
                extract => true,
                extract_path => '/opt/blog',
                source => '/usr/src/blog/blog.zip',
                cleanup => true,
        }
}


node 'stapp01.stratos.xfusioncorp.com','stapp02.stratos.xfusioncorp.com','stapp03.stratos.xfusioncorp.com' {
  archive { '/opt/blog/blog.zip':
    ensure        => present,
    extract       => true,
    extract_path  => '/opt/blog',
    source        => '/usr/src/blog/blog.zip',
    cleanup       => true,
  }
}

node default{
}