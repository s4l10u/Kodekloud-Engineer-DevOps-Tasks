
class symlink {
    file {'/opt/dba':
        ensure =>  'link',
        target =>  '/var/www/html',
    }

    file {'/opt/dba':
        ensure =>  'present',
    }


}

node 'stapp01.stratos.xfusioncorp.com','stapp02.stratos.xfusioncorp.com','stapp03.stratos.xfusioncorp.com',{
include symlink
}