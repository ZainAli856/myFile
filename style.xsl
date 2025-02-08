<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/transform">

<xsl:template match="/">

<html>
    <head>
        <title>day1</title>
        <style type="text/css">
        table{
            width:800px;
            border;solid 1.5px;
        }
        th{
            background-color:gray;
        }
        td{
            border: solid lightgray 1px;
        }
        
        </style>
    </head>

    <body>
    <table>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
            <th>phone</th>
        </tr>

    <xsl:for-each select="persondata/user">
   
        <tr>
            <td><xsl:value-of select="@id" /></td>
            <td><xsl:value-of select="fname" /></td>
            <td><xsl:value-of select="lname" /></td>
            <td><xsl:value-of select="age" /></td>
            <td><xsl:value-of select="phone" /></td>
        </tr>

    </xsl:for-each>
    </table>
    </body>
    
</html>
</xsl:template>

</xsl:stylesheet>