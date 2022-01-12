<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:wd="urn:com.workday/bsvc"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="text"/>
    <xsl:variable name="linefeed" select="'&#10;'"/>
    
    <xsl:template match="wd:Report_Data/wd:Report_Entry">
        <xsl:value-of select="wd:Employee_ID"/>
        <xsl:text>|</xsl:text>
        <xsl:value-of select="wd:Legal_Last_Name"/>
        <xsl:text>|</xsl:text>
        <xsl:value-of select="wd:Legal_First_Name"/>
        <xsl:text>|</xsl:text>
        <xsl:value-of select="wd:primaryWorkEmail"/>
        <xsl:text>|</xsl:text>
        <xsl:value-of select="replace(normalize-space(wd:primaryWorkPhone),' ','')"/>
        <xsl:value-of select="$linefeed"/>
    </xsl:template>
    
</xsl:stylesheet>