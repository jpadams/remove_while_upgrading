class remove_while_upgrading {

  User<| title == 'peadmin' or title == 'puppet-dashboard' |> {
    shell => '/sbin/nologin',
  }

}

