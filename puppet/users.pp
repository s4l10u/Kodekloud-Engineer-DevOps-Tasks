node 'stapp01.stratos.xfusioncorp.com','stapp02.stratos.xfusioncorp.com','stapp03.stratos.xfusioncorp.com' {
include add_user
}

class add_user {
   # add user, create homedir and set a password
  user { 'myriam':
    ensure     => 'present',
    managehome => true,
    uid => 1840
  }
}

