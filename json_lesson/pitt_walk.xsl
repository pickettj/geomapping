<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    exclude-result-prefixes="#all"
    version="3.0">
    <xsl:output method="text" indent="yes"/>
    


<xsl:template match="/">
    
    
    {
    "type": "FeatureCollection",
    "features": [
    
        <xsl:apply-templates select="//place"/>
        	]
  }
    
   
</xsl:template>
    


<!-- The XSLT "Mapping" Feature: Key-Value look-up pairs -->
<xsl:variable name="coordinates" as="map(xs:string, xs:string)">
    <xsl:map>
        <xsl:map-entry key="'commonplace'" select="'-79.91877256652567,40.441063867901882'"/>
        <xsl:map-entry key="'ascend'" select="'-79.8961075427762,40.45097067558358'"/>
        <xsl:map-entry key="'posvar'" select="'-79.95426787957021,40.44125235992703'"/>
    </xsl:map>
</xsl:variable>


    
    
    <xsl:template match="place">
        <xsl:variable name="placeUid" select="@uid"/>
        <xsl:variable name="coords" select="map:get($coordinates, $placeUid)"/>
        
        <!-- Output the JSON structure directly -->
        
        {
        "type": "Feature",
        "geometry": {
        "type": "Point",
        "coordinates": [<xsl:value-of select="$coords"/>]
        },
        "properties": {
        "name": "<xsl:value-of select="$placeUid"/>"
        }
        }
        <xsl:if test="position() != last()">,</xsl:if>
        
        
    </xsl:template>
    
    
</xsl:stylesheet>