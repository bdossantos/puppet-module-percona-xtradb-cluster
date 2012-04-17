class percona_xtradb_cluster::packages {
    
    include percona_xtradb_cluster::repository::install
    
    package {
        ['percona-xtradb-cluster-client-5.5', 
        'percona-xtradb-cluster-server-5.5']:
        ensure  => 'installed',
        require => Class['percona_xtradb_cluster::repository::install']
    }
}