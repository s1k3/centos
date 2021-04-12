***File Permissions***

1. chown -R apache.apache /var/www/laravel
2. chmod -R 755 /var/www/laravel
3. chmod -R 755 /var/www/laravel/storage

***SELinux enabled systems also run the below command to allow write on storage directory.***

1. chcon -R -t httpd_sys_rw_content_t /var/www/laravel/storage

***Third party network calls***
1. setsebool httpd_can_network_connect 1

***Get all SELinux configurations***
getsebool -a
***How to fix Error: laravel.log could not be opened?***
1. sudo chown -R $USER:www-data storage
2. chmod -R 775 storage
