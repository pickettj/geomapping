<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    exclude-result-prefixes="#all"
    version="3.0">
    <xsl:output method="text" indent="yes"/>


    
<!--Set up an XSLT "Map," whereby you can call values based on a key.-->
    <xsl:variable name="coordinates" as="map(xs:string, xs:string)">
        <xsl:map>
            <xsl:map-entry key="'commonplace'" select="'-79.91877256652567,40.441063867901882'"/>
            <xsl:map-entry key="'ascend'" select="'-79.8961075427762,40.45097067558358'"/>
            <xsl:map-entry key="'posvar'" select="'-79.95426787957021,40.44125235992703'"/>
        </xsl:map>
    </xsl:variable>
    
    

<!-- Geojson "superstructure" (analagous to how you would set up html or SVG superstructure) -->  
    <xsl:template match="/">
        {
        "type": "FeatureCollection",
        "features": [
        <xsl:apply-templates select="//place" mode="points"/>
        <xsl:apply-templates select="//day" mode="lines"/>
        ]
        }
    </xsl:template>
    

<!-- Mapping all of the points in the XML document (no order, no relationship to one o  -->
    <xsl:template mode="points" match="place">
        {
        "type": "Feature",
        "geometry": {
        "type": "Point",
        "coordinates": [<xsl:value-of select="map:get($coordinates, @uid)"/>]
        },
        "properties": {
        "name": "<xsl:value-of select="@uid"/>"
        }
        },
    </xsl:template>
    
    <!-- Template for line features -->
    <xsl:template mode="lines" match="day">
        {
        "type": "Feature",
        "geometry": {
        "type": "LineString",
        "coordinates": [
        <xsl:apply-templates select="place" mode="lines"/>
        ]
        },
        "properties": {
        "name": "Line 1"
        }
        },
    </xsl:template>
    
    <xsl:template mode="lines" match="place">
        <xsl:variable name="coords" select="map:get($coordinates, @uid)"/>
        [<xsl:value-of select="$coords"/>]
        <xsl:if test="position() != last()">,</xsl:if>
    </xsl:template>
</xsl:stylesheet>