# Homebrewed Historical Shapefiles

## What is this?

This directory contains a variety of shape files, mostly for early modern and colonial-era Central / South Asian / Middle Eastern historical political / administrative boundaries. Some of them are of my own design, some are traced or adapted from atlases; most are a combination. All are works in progress, i.e. I alter the borders, add descriptive data, and update the files as I learn more. (The numbers after 'loc' in the filenames are internal tracking numbers, do not correspond to anything public.) Feedback welcome!

Where applicable, I have tried to include the raster base base-layer(s) I used for tracing; and have kept a minimal log of departures from that source.

## What this is not

There are serious digital mapping projects out there for [China](https://chgis.fas.harvard.edu/), [Russia](https://imperiia.omeka.fas.harvard.edu/), the [Middle East](https://althurayya.github.io/), and [world history](https://whgazetteer.org/) (and even more for the ancient world), all of which involve teams of researchers and rigorous methodology for creating data. This is not one of those.

## Can I use these?

This work is licensed under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1). If you used them unmodified in your work, please credit me. If you adapt them - even just a little bit - then it is now your work.

## How do I even open these files?

In case you are unfamiliar with this file format but wish to tinker with the maps:  shape files (which are really just a series of coordinates connected together to make a polygon) can be opened in data processing platforms such as R or Python (e.g., [geopandas](https://geopandas.org/en/stable/)); but the easiest way to get started is to download the open source [QGIS](https://www.qgis.org/en/site/), in which case it's as easy as double-clicking on the file ending `.shp` (though the dependent files must be in the same directory).
