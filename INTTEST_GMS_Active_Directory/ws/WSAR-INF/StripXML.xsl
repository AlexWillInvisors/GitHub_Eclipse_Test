<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:env="http://schemas.xmlsoap.org/soap/envelope/"
    xmlns:wd="urn:com.workday/bsvc"
    version="2.0">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <xsl:copy-of select="env:Envelope/env:Body/wd:Get_Workers_Response/wd:Response_Data"/> 
    </xsl:template>
    
</xsl:stylesheet>