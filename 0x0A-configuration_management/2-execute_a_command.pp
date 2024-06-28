exec { 'killmenow_process':
  command     => 'pkill -f killmenow'
  path        => ['/bin', '/usr/bin']
  refreshonly => true
}
