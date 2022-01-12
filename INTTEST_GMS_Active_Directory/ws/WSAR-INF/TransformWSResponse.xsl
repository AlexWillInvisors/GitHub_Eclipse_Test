<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>

	<xsl:variable name="delimiter"><xsl:text>,</xsl:text></xsl:variable>
	<xsl:variable name="linebreak"><xsl:text>&#13;&#10;</xsl:text></xsl:variable>
	<xsl:param name="p.EmployeeID"/>
	<xsl:param name="p.PositionID"/>
	<xsl:param name="p.FirstName"/>
	<xsl:param name="p.LastName"/>
	
	
	<xsl:template match="/">
		<xsl:value-of select="$linebreak"/>
		<xsl:value-of select="$p.EmployeeID"/>
		<xsl:value-of select="$delimiter"/>
		<xsl:value-of select="$p.PositionID"/>
		<xsl:value-of select="$delimiter"/>
		<xsl:value-of select="$p.LastName"/>
		<xsl:value-of select="$delimiter"/>
		<xsl:value-of select="$p.FirstName"/>
	</xsl:template>
</xsl:stylesheet>