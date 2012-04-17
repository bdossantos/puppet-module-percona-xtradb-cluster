class percona_xtradb_cluster(
    $keyserver  = 'hkp://keys.gnupg.net',
    $recv_keys  = '1C4CBDCDCD2EFD2A',
    $gpg_export = 'CD2EFD2A',
    $repository = 'http://repo.percona.com/apt'
    ) {
    
    include percona_xtradb_cluster::packages,
            percona_xtradb_cluster::configure,
            percona_xtradb_cluster::service
}
