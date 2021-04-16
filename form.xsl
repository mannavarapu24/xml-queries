<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" omit-xml-declaration="no"
            encoding="UTF-8"/>
<xsl:template match="/">
<html>
<body>
<form>
<br></br>
<!--Textbox -->
<xsl:for-each select="/dataInputForm/textbox">
				<xsl:value-of select="./caption"/>
				<input type="text" name="{./name}" size="{./size}" maxlength="{./maxlength}"/>
				<br></br>
            </xsl:for-each>
<br></br>
<br></br>
<!--checkbox-->
<xsl:for-each select="/dataInputForm/checkboxes">
			    <label><xsl:value-of select="./caption"/></label>
			    <xsl:for-each select="/dataInputForm/checkboxes/checkboxgroup/checkbox">
					<input type="checkbox" name="{./name}" value="{./value}"/><xsl:value-of select="./caption"/>
                </xsl:for-each>
			</xsl:for-each>
            <br></br>
<br></br>
<!--select-->
	<xsl:for-each select="/dataInputForm/select">
			    <label><xsl:value-of select="./caption"/></label>
			    <select name="{./name}">
			    <xsl:for-each select="/dataInputForm/select/options/option">
					<option value="{./values}" ><xsl:value-of select="./caption"/></option>
                </xsl:for-each>
				</select>
			</xsl:for-each>
            <br></br>
<br></br>
<!--radio boxes-->    
<xsl:for-each select="/dataInputForm/radio">
			    <label><xsl:value-of select="./caption"/></label>
			    <xsl:for-each select="/dataInputForm/radio/radiogroup/radioelement">
					<input type="radio" value="{./value}"><xsl:value-of select="./caption"/></input>
                </xsl:for-each>
			</xsl:for-each>

<br></br>
<br></br>
<!--multiselect-->
<xsl:if test = "dataInputForm/multiselect" > 
    <label for="status">
    <xsl:value-of select="dataInputForm/multiselect/caption"/></label>
    <select multiple="true">
    <xsl:for-each select="dataInputForm/multiselect/options/option">
        <option value="{value}">
        <xsl:value-of select="caption"/></option>
    </xsl:for-each> 
    </select>
</xsl:if>

<br></br>
<br></br>
<!--submit and reset -->
<xsl:for-each select="/dataInputForm/submit">
				<input type="submit" value="{./caption}"/>
            </xsl:for-each>
<xsl:for-each select="/dataInputForm/reset">
				<input type="reset" value="{./caption}"/>
            </xsl:for-each>
</form>
</body>
</html>
</xsl:template>


</xsl:stylesheet>