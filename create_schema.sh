
if [ "$#" -eq  "0" ]
   then
    	 echo "No arguments supplied"
   else
	sql="sql/create_city_schema.sql"
	tmp="tmp/create_city_schema_prod_$1.sql.tmp"
	s_prod="s/var_name/$1/g"

	cat $sql | sed $s_prod > $tmp

	sudo -u postgres psql -a -U goodway_beta -d goodway_beta -f $tmp -h localhost
	#sudo -u postgres psql -a -U goodway_prod -d goodway_prod -f $tmp -h localhost
   fi
