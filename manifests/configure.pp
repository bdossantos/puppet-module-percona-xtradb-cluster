class percona_xtradb_cluster::configure {

    include percona_xtradb_cluster::mysql::configure,
            percona_xtradb_cluster::percona::configure
}