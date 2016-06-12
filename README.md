# About
Quick import of your GTFS data in your PostGreSQL database. Tested only on SEMITAN-Nantes Gtfs.

# License
Released under the MIT (X11) license. See LICENSE in this directory.

# Installation
replace new_town by the name of your city. Respect file hierarchy as in the example.

./reset.sh

./create_schema.sh new_town

./import_gtfs.sh new_town


A folder name new_town needs to be created in data/ so the installer can find this path : ./data/new_town/
In this folder, add your gtfs files

Sample is created for Nantes/SEMITAN gtfs
