class percona_xtradb_cluster::mysql::service($ensure = 'running') {

  service { 'mysql':
    enable      => true,
    ensure      => $ensure,
    subscribe   => File['/etc/my.cnf', '/etc/mysql/my.cnf'],
    require     => Package['percona-xtradb-cluster-server-5.5'],
  }
}