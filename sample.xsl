<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">-->

<xsl:template match="/root">
<html>
 <head>
        <style>
            .table{
                display: flex ;
                justify-content: center;
            }
            th{
                background-color: blueviolet;
            }
        </style>
    </head>
    <body>
    <div class="table">
        <table border="3">
            <tr>
                <th> Company </th>
                <th> Model </th>
                <th> Price </th>
            </tr>
            <xsl:for-each select="company">
            
                <tr >
                    <td rowspan="4"><xsl:value-of select="name"/></td>
                </tr>
                <xsl:for-each select="model">
                <xsl:sort select="model_name"/>
                <tr>
                    <td><xsl:value-of select="model_name"/> </td>
                    <td><xsl:value-of select="price"/> </td>
                </tr>
                </xsl:for-each> 
            </xsl:for-each>
            
        </table>
        </div>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>
