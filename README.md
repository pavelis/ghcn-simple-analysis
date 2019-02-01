# Climate change survey

How to check climate change using data for your location

## Original data
Dataset link: https://www.ncdc.noaa.gov/cdo-web/datasets
By year: https://www1.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/

## get_ghcn_data
The script that downloads climate data for given year and given meteorological station.
Before using this script dataset directory must been set:
```
DATADIR=/path/to/dataset/directory
export DATADIR
```
If DATADIR directory is not set, the script uses current directory as dataset directory.

Usage:
```
./get_ghcn_data *station_id type year1 year2*
```
where:
*station_id* - station identification number (https://www1.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd-stations.txt)
*type* - data type, e. g. TAVG - average temperature
*year1* - starting year
*year2* - finishing year
