node percona1 {

    include percona_xtradb_cluster
}

node percona2 {

    class { 
        'percona_xtradb_cluster':
        joinip          => '192.168.33.10',
        mysql_serverid  => 2
    }
}

node percona3 {

    class { 
        'percona_xtradb_cluster':
        joinip          => '192.168.33.10',
        mysql_serverid  => 3
    }
}