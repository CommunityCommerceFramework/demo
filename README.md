Magento Demo
============

A Magento 1 Demo installable via composer


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
