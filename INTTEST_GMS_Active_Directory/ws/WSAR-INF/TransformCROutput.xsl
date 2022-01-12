<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:wd="urn:com.workday.report/AB_-_Studio_Sample_Report" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xsl">
    <xsl:output method="text"/>
    
    <xsl:variable name="delimiter"><xsl:text>,</xsl:text></xsl:variable>
    <xsl:variable name="linebreak"><xsl:text>&#13;&#10;</xsl:text></xsl:variable>
    
    <xsl:template match="/">
        <xsl:for-each select="wd:Report_Data/wd:Report_Entry">
            <xsl:text>Employee ID: </xsl:text>
            <xsl:value-of select="wd:Employee_ID"/>
            <xsl:value-of select="$delimiter"/>
            <xsl:text>Position ID: </xsl:text>
            <xsl:value-of select="wd:Position_ID"/>
            <xsl:value-of select="$delimiter"/>
            <xsl:text>First Name: </xsl:text>
            <xsl:value-of select="wd:firstName"/>
            <xsl:value-of select="$delimiter"/>
            <xsl:text>Last Name: </xsl:text>
            <xsl:value-of select="wd:lastName"/>
            <xsl:value-of select="$linebreak"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>