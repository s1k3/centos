php artisan resource-file:from-database $1 --force
read -p "Press enter to continue"
php artisan create:views $1   --force
php artisan create:controller $1 --with-form-request
php artisan create:model $1 --force
