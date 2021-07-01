
class file_modifier {

   # Update beta.txt under /opt/finance

   file { '/opt/finance/beta.txt':

     ensure => 'present',

     content => 'Welcome to xFusionCorp Industries!',

     mode => '0744',

   }

 }

 node 'stapp03.stratos.xfusioncorp.com' {

   include file_modifier

 }


 