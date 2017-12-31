Demo
============

A Demo installable via composer


## run Demo via the php builtin server

we provided a simple router script to make the Demo run without a real webserver

Just run this command from the root of this project:

```
php-5.6 -t build/ -S 127.0.0.5:8080 router.php
```


## prebuild Databases

to reduce the time of the initial database creation, it provides some
small database dumps to speed up for example CI builds.

First is a rather empty one.

Second is filled with the smaple data from https://github.com/Vinai/compressed-magento-sample-data
Using this dump still needs the media and skin data from the smaple archive.


## to run on cloud9

***caution***  
*the normal size of a cloud9 workspace is 512MB Ram and 1G Disk,
that is enough for an empty instance, but may soon reach its limits.*


add php.ini:  
```
error_reporting = E_ALL


opcache.max_accelerated_files=14000
opcache.revalidate_freq= 10
opcache.fast_shutdown=1

opcache.save_comments=1
opcache.load_comments=1


opcache.enable_file_override=1
```

configure composer:  
```
composer config -g repositories.firegento composer http://packages.firegento.com
```

start and fill MySql:  
```
mysql-ctl start
bunzip2 prebuild/empty/database.sql.bz2
mysql-ctl cli
use c9
source prebuild/empty/database.sql
```

start Webserver:  
right click on `build/index.php` and chose `run`. 

install application:  
use the MySql data as described on https://docs.c9.io/docs/setting-up-mysql  
means database is c9, host is localhost, user your c9 username, password empty.

afterwards you maybe need to change the `web/unsecure/base_url` to http


