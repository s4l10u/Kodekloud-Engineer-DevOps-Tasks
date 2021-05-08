node stapp03.stratos.xfusioncorp.com {
  file_line { 'replace line':
    path => '/opt/devops/demo.txt',
    replace => true, 
    line => 'Welcome to xFusionCorp Industries!',
    match   => "Welcome to Nautilus Industries!",
  }
}
