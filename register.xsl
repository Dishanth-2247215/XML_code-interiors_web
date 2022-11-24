<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/root">

<html>
    <head>
        <h1>Company Info</h1>
        <style>
            .tab{
                font-size:20px;
                font-family:Sans-serif;
                background-color:wheat;
                padding:25px;
                display: flex ;
                justify-content: center;
            }
            th{
                background:white;
            }
        </style>
        
    </head>
    <body>
        <fieldset>
            <legend style="font-size:25px;"><b>Customer Details</b></legend>
            <div class="tab">
                <table border="1px solid" style="width: 80%;">
                    <tr>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Phone_Number</th>
                        <th>Mail_id</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Purchase</th>
                    </tr>
                    <xsl:for-each select="customer">
                        <xsl:for-each select="Person">
                            <xsl:sort select="name"/>
                            <xsl:if test="cart &gt; 10">
                        <tr>
                            <td><xsl:value-of select="name"/> </td>
                            <td><xsl:value-of select="gender"/> </td>
                            <td><xsl:value-of select="Phone_num"/> </td>
                            <td><xsl:value-of select="mail_id"/> </td>
                            <td><xsl:value-of select="username"/> </td>
                            <td><xsl:value-of select="cpassword"/> </td>
                            <td><xsl:value-of select="cart"/> </td>
                        </tr>
                        </xsl:if>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </div>
        </fieldset><br/>
        <fieldset>
            <legend style="font-size:25px;"><b>Admin Details</b></legend>
        <div class="tab">
            <table border="3" style="width: 80%;">
                <tr>
                    <th>Name</th>
                    <th>Phone_Number</th>
                    <th>Mail_id</th>
                    <th>Admin_name</th>
                    <th>Password</th>
                </tr>
                <xsl:for-each select="admin">
                    <xsl:for-each select="main">
                    <tr>
                        <td><xsl:value-of select="name"/> </td>
                        <td><xsl:value-of select="Phone_num"/> </td>
                        <td><xsl:value-of select="mail_id"/> </td>
                        <td><xsl:value-of select="adminname"/> </td>
                        <td><xsl:value-of select="apassword"/> </td>
                    </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </table>
        </div>
    </fieldset>
    </body>
</html>    
</xsl:template>
</xsl:stylesheet>
