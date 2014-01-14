# Puppet Percona XtraDB Cluster Module

Module for configuring [Percona XtraDB Cluster](http://www.percona.com/software/percona-xtradb-cluster/)
on Debian.

Under (heavy) development :)

## Install

```
git clone https://github.com/bdossantos/puppet-module-percona-xtradb-cluster percona-xtradb-cluster
cd percona-xtradb-cluster
vagrant up
vagrant ssh percona1
```

## Ressources :

* [Percona XtraDB Cluster's documentation](http://www.percona.com/doc/percona-xtradb-cluster/index.html)
* [Installing Percona XtraDB Cluster from Binaries](http://www.percona.com/doc/percona-xtradb-cluster/installation.html)
* [Load balancing with HAProxy](http://www.percona.com/doc/percona-xtradb-cluster/haproxy.html)
* @lefred : [Percona XtraDB Cluster test w/ Vagrant](https://github.com/lefred/percona-cluster)

## TODO :

* Manage MySQL :
    * Configuration
    * Users + Rights
* Galera Load Blancer / HaProxy ?
* Tests w/ rspec-puppet
