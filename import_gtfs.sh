\copy nantes.gtfs_agency (agency_id,agency_name,agency_url,agency_timezone,agency_lang,agency_phone) FROM '/home/antoine/gtfs_SQL_importer/data/nantes/agency.txt' DELIMITER ',' CSV HEADER;

\copy nantes.gtfs_calendar_dates (service_id, exception_date, exception_type) FROM '/home/antoine/gtfs_SQL_importer/data/nantes/calendar_dates.txt' DELIMITER ',' CSV HEADER;

\copy nantes.gtfs_calendar (service_id,monday,tuesday,wednesday,thursday,friday,saturday,sunday,start_date,end_date) FROM '/home/antoine/gtfs_SQL_importer/data/nantes/calendar.txt' DELIMITER ',' CSV HEADER;
  

\copy nantes.gtfs_routes (route_id,agency_id,route_short_name,route_long_name,route_desc,route_type,route_color,route_text_color) FROM '/home/antoine/gtfs_SQL_importer/data/nantes/routes.txt' DELIMITER ',' CSV HEADER;

\copy nantes.gtfs_shapes (shape_id,shape_pt_lat,shape_pt_lon,shape_pt_sequence) FROM '/home/antoine/gtfs_SQL_importer/data/nantes/shapes.txt' DELIMITER ',' CSV HEADER;

\copy nantes.gtfs_stops (stop_id,stop_name,stop_desc,stop_lat,stop_lon,zone_id,stop_url,location_type,parent_station,wheelchair_boarding) FROM '/home/antoine/gtfs_SQL_importer/data/nantes/stops.txt' DELIMITER ',' CSV HEADER NULL AS '';

\copy nantes.gtfs_stop_times (trip_id,arrival_time,departure_time,stop_id,stop_sequence,pickup_type,drop_off_type) FROM '/home/antoine/gtfs_SQL_importer/data/nantes/stop_times.txt' DELIMITER ',' CSV HEADER;

\copy nantes.gtfs_trips (route_id,service_id,trip_id,trip_headsign,direction_id,block_id,shape_id) FROM '/home/antoine/gtfs_SQL_importer/data/nantes/trips.txt' DELIMITER ',' CSV HEADER;
