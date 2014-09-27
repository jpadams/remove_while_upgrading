class remove_while_upgrading {

  Group <| title == 'pe-activemq'  or
           title == 'pe-apache'    or
           title == 'pe-auth'      or
           title == 'pe-memcached' or
           title == 'pe-postgres'  or
           title == 'pe-puppet'    or
           title == 'pe-puppetdb'  or
           title == 'peadmin'      or
           title == 'puppet-dashboard' |> {
    forcelocal => true,
  }
  
  User <| title == 'pe-activemq'  or
          title == 'pe-apache'    or
          title == 'pe-auth'      or
          title == 'pe-memcached' or
          title == 'pe-postgres'  or
          title == 'pe-puppet'    or
          title == 'pe-puppetdb'  or
          title == 'peadmin'      or
          title == 'puppet-dashboard' |> {
    forcelocal => true,
  }

  # This will change the shell for these users
  # from the default of /bin/bash to /sbin/nologin.
  # Only uncomment this if required due to security policy.
  #User <| title == 'peadmin'      or
  #        title == 'puppet-dashboard' |> {
  #  shell => '/sbin/nologin',
  #}

}

