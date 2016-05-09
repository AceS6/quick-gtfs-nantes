#/bin/bash
psql -U gtfs_prod -d gtfs -h localhost -f sql/create_gtfs_tables.sql
