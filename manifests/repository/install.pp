class percona_xtradb_cluster::repository::install {
    
    include percona_xtradb_cluster::repository::packages
    
    file {
        '/etc/apt/sources.list.d':
        ensure  => 'directory',
        owner   => 'root',
        group   => 'root';

        '/etc/apt/sources.list.d/percona.list':
        ensure  => 'present',
        owner   => 'root',
        group   => 'root',
        mode    => '0600',
        content => template('percona_xtradb_cluster/percona.list.erb')
    }
    
    exec {
        'percona-gpg':
        path    => '/bin:/usr/bin',
        command => "gpg --keyserver ${percona_xtradb_cluster::keyserver} --recv-keys ${percona_xtradb_cluster::recv_keys}",
        unless  => 'apt-key list | grep percona',
        require => File['/etc/apt/sources.list.d/percona.list'],
        notify  => Exec['gpg-export'];
  
        'gpg-export':
        path    => '/bin:/usr/bin',
        command => "gpg -a --export ${percona_xtradb_cluster::gpg_export} | apt-key add -",
        unless  => 'apt-key list | grep percona',
        require => Exec['percona-gpg'],
        notify  => Exec['update-apt'];
        
        'update-apt':
        path        => '/bin:/usr/bin',
        command     => 'apt-get update',
        require     => Exec['gpg-export'],
        refreshonly => true;
    }
}