# increase the user holberton to login and open files without error

# increase the hard file of the defualt file 
exec { 'hard limit':
  command => "sed -i '/^holberton hard/s/5/50000/' /etc/security/limits.conf",
  path    => '/usr/local/bin/:/bin/',
}

# increase the soft file of the defualt file 

exec { 'soft limit':
    command => "sed -i '/^holberton soft/s/5/50000/' /etc/security/limits.conf",
  path    => '/usr/local/bin/:/bin/',
}
