# Geomapping


## Reference Links

- [GeoNames](http://www.geonames.org/): Database of place coordinates
- [QGIS Tutorials](http://www.qgistutorials.com/en/)
  - [Adding the World Hillshade Layer](https://ieqgis.wordpress.com/2017/09/02/adding-esris-world-hillshade-layer-to-qgis/)
- [Geopandas Tutorial](https://github.com/jorisvandenbossche/geopandas-tutorial): Complete with sample Jupyter notebook walk-throughs
- [Linked Places Format](https://github.com/LinkedPasts/linked-places) for the [World Historical Gazetteer](http://whgazetteer.org/)
  - [Helpful tutorials](http://dev.whgazetteer.org/tutorials/)

## Rasters for Tracing

- [Middle East Historical Maps](https://middleastonight.com/maps) (via [Twitter](https://twitter.com/_ZachFoster/status/1248641984824147968))

## Public Data Sources

- [Natural Earth](https://www.naturalearthdata.com/downloads/): shape files for natural features
- [Geofabrik](https://www.geofabrik.de/): huge database of shapefiles (both administrative and natural) by country
- [Global Watersheds](http://www.fao.org/geonetwork/srv/en/metadata.show?id=30914) vector files ([direct download link](http://www.fao.org/geonetwork/srv/en/resources.get?id=30914&fname=wri_basins.zip&access=private))
  - Linked to from [Freshwater Data Portal](https://data.freshwaterbiodiversity.eu/shapefiles)
- [Ecoregions](https://www.fs.fed.us/rm/ecoregions/products/map-ecoregions-continents/#)
- [USGS Earth Explorer](https://earthexplorer.usgs.gov/): download detailed topograhpic data


## Historical Data Resources

- [Imperiia](http://dighist.fas.harvard.edu/projects/imperiia/finder): historical shape files for the Russian Empire, from a Harvard mapping project
- [Ancient World Mapping Center](https://github.com/AWMC/geodata): geospatial data for the ancient world
  - [Persian Empire](https://github.com/AWMC/geodata/blob/master/Cultural-Data/political_shading/persian_extent/extent_of_the_persian_empire.geojson) geojson


## Online Utilities and Related Tools

- [Recogito](https://recogito.pelagios.org/): upload a text, get geographic data out the other end
- [Neatline](https://neatline.org/): [Omeka](https://omeka.org/)-based tool for publishing interactive story-maps
- [Map Warper](https://lincolnmullen.com/projects/spatial-workshop/georectification.html): tutorial and link to alternatives to QGIS / ArcGIS for georectification. (Hat tip [@grunewas](https://github.com/grunewas))

## Existing Projects

- [Song Dynasty Digital Gazetteer](http://songgis.ucmerced.edu/)
  - [Explanation of data structure](http://songgis.ucmerced.edu/?page_id=94)
- [Al-Thurayya](https://althurayya.github.io/): Mapping the classical Islamic world

## GUI Platforms

- [Geoda](http://geodacenter.github.io/): "a user-friendly and graphical interface to methods of exploratory spatial data analysis"


----

## Methods


### Spatial Joins

- When you have a dataset of values associated with specific coordinates, how to make a choropleth shading a set of shape files based on the aggregate value of the points within a given shape? (Hat tip [@grunewas](https://github.com/grunewas))
- [QGIS tutorial on Performing Spatial Joins](https://www.qgistutorials.com/en/docs/3/performing_spatial_joins.html)
  - [How to override "invalid input"](https://gis.stackexchange.com/questions/289056/ignoring-invalid-input-features-with-intersection-tool-in-qgis) warning with Intersection tool.
