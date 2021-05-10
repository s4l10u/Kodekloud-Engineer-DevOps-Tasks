node ‘stapp01.stratos.xfusioncorp.com 7’{
include ssh_node1
}
node ‘stapp02.stratos.xfusioncorp.com’{
include ssh_node2
}
node ‘stapp03.stratos.xfusioncorp.com’{
include ssh_node3
}


class ssh_node1{
ssh_authorized_key { 'tony@stapp01':
  ensure => present,
  user   => 'tony',
  type   => 'ssh-rsa',
  key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDpq/RUhevrhomZm0EwJwEz/FYCZU2BZB3BQIxfYG0cnzLrFmcdPtoAXq7D/20TzG2UkGh36WNjELTSLmXZsFYYg6T373xOUvdIm95jjMkEaBkfMJd/J/voMpudf5kCgRHWt5tipsDP4gHqXvWTljjhAQwXaD+lic5PwOsnFNQ+adxHv7rJNBnghxCnb/FHcLKaEpfz19oEqiMeJVY+SIwwY/YAzfa8ZJa2Un2nXikpLHYi5aTFhPZ+g8VB3T61oFCUPSGXxjRtmSAJDiGbM1qIzYiza3k+VtPqPkdE4GZhF1uuZjARO7JAmTY+oouDHnCisJqB/BGOY3OOxmfj45f5 root@jump_host.stratos.xfusioncorp.com',
}
}

class ssh_node2{
ssh_authorized_key { 'steve@stapp02':
  ensure => present,
  user   => 'steve',
  type   => 'ssh-rsa',
  key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDpq/RUhevrhomZm0EwJwEz/FYCZU2BZB3BQIxfYG0cnzLrFmcdPtoAXq7D/20TzG2UkGh36WNjELTSLmXZsFYYg6T373xOUvdIm95jjMkEaBkfMJd/J/voMpudf5kCgRHWt5tipsDP4gHqXvWTljjhAQwXaD+lic5PwOsnFNQ+adxHv7rJNBnghxCnb/FHcLKaEpfz19oEqiMeJVY+SIwwY/YAzfa8ZJa2Un2nXikpLHYi5aTFhPZ+g8VB3T61oFCUPSGXxjRtmSAJDiGbM1qIzYiza3k+VtPqPkdE4GZhF1uuZjARO7JAmTY+oouDHnCisJqB/BGOY3OOxmfj45f5 root@jump_host.stratos.xfusioncorp.com',
}
}

class ssh_node3{
ssh_authorized_key { 'banner@stapp03':
  ensure => present,
  user   => 'banner',
  type   => 'ssh-rsa',
  key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDpq/RUhevrhomZm0EwJwEz/FYCZU2BZB3BQIxfYG0cnzLrFmcdPtoAXq7D/20TzG2UkGh36WNjELTSLmXZsFYYg6T373xOUvdIm95jjMkEaBkfMJd/J/voMpudf5kCgRHWt5tipsDP4gHqXvWTljjhAQwXaD+lic5PwOsnFNQ+adxHv7rJNBnghxCnb/FHcLKaEpfz19oEqiMeJVY+SIwwY/YAzfa8ZJa2Un2nXikpLHYi5aTFhPZ+g8VB3T61oFCUPSGXxjRtmSAJDiGbM1qIzYiza3k+VtPqPkdE4GZhF1uuZjARO7JAmTY+oouDHnCisJqB/BGOY3OOxmfj45f5 root@jump_host.stratos.xfusioncorp.com',
}
}
