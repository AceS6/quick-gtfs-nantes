sudo -u postgres dropdb -e gtfs_prod
sudo -u postgres createdb -e gtfs_prod

sudo -u postgres dropdb -e gtfs_staging
sudo -u postgres createdb -e gtfs_staging
