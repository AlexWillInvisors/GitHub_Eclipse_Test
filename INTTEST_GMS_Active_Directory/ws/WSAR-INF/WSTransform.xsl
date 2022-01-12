<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:wd="urn:com.workday/bsvc"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:param name="employee.id"/>
    <xsl:param name="first.name"/>
    <xsl:param name="last.name"/>
    <xsl:param name="email.address"/>
    <xsl:param name="phone.number"/>
    
    <xsl:template match="/">
    
        <wd:Report_Entry xmlns:wd="urn:com.workday/bsvc">
	 		<wd:Employee_ID><xsl:value-of select="$employee.id"/></wd:Employee_ID>
     		<wd:Legal_First_Name><xsl:value-of select="$first.name"/></wd:Legal_First_Name>
     		<wd:Legal_Last_Name><xsl:value-of select="$last.name"/></wd:Legal_Last_Name>
     		<wd:primaryWorkEmail><xsl:value-of select="$email.address"/></wd:primaryWorkEmail>
     		<wd:primaryWorkPhone><xsl:value-of select="$phone.number"/></wd:primaryWorkPhone>
		</wd:Report_Entry>
		
    </xsl:template>
    
</xsl:stylesheet>