class percona_xtradb_cluster::mysql::configure {

  file { '/etc/mysql/my.cnf':
    ensure  => present,
    content => template('percona_xtradb_cluster/mysql/my.cnf.erb'),
    require => Package['percona-xtradb-cluster-server-5.5'];
  }
}