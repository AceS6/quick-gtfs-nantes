# About
Quick & easy import of GTFS data into a PostGreSQL database.

* [GTFS (General Transit Feed Specification)](http://code.google.com/transit/spec/transit_feed_specification.html)
* [List of Public GTFS feeds](http://code.google.com/p/googletransitdatafeed/wiki/PublicFeeds)

# License
Released under the MIT (X11) license. See LICENSE in this directory.

# Installation
./reset.sh

./create_schema.sh new_town

./import_gtfs.sh new_town


A folder name new_town needs to be created in data/ so the installer can find this path : ./data/new_town/
In this folder, add your gtfs files

Sample is created for Nantes/SEMITAN gtfs
