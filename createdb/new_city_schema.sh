
if [ "$#" -eq  "0" ]
   then
    	 echo "No arguments supplied"
   else
	sql="sql/create_city_schema.sql"
	tmp="tmp/create_city_schema_prod_$1.sql.tmp"
	s_prod="s/var_name/$1/g"

	cat $sql | sed $s_prod > $tmp

	sudo -u postgres psql -a -U gtfs_prod -d gtfs_prod -f $tmp -h localhost
	sudo -u postgres psql -a -U gtfs_staging -d gtfs_staging -f $tmp -h localhost
   fi
