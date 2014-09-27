class remove_while_upgrading {

  Group <| title == 'pe-activemq'  or
           title == 'peadmin'      or
           title == 'pe-apache'    or
           title == 'pe-auth'      or
           title == 'pe-memcached' or
           title == 'pe-postgres'  or
           title == 'pe-puppetdb'  or
           title == 'pe-puppet'    or
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

  User <| title == 'peadmin'      or
          title == 'puppet-dashboard' |> {
      shell => '/sbin/nologin',
  }

}

