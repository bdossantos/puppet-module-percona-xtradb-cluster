class percona_xtradb_cluster::repository::packages {

  package { 'gpgv':
    ensure => 'installed';
  }
}