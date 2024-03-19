# increase the amount of traffic can be handle by nginx server

# increase the ULIMIT of the defualt file 
exec { 'hard limit':
  command => "/bin/sed -i 's/15/4096/' /etc/default/nginx",
  path    => '/usr/local/bin/:/bin/',
}


# restart Nginx
exec { 'soft limit':
  command => "/etc/init.d/nginx restart",
  path    => '/etc/init.d/'
}
