<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>day2</title>
        <style type="text/css">
        table{
            width:800px;
            border:solid 1px;
        }
        th{
            background-color:lightgray;
        }
        td{
            border:solid lightgray 1px;
        }
        </style>
    </head>
<body>
<table>
    <tr>
        <th>Catergory</th>
        <th>Title</th>
        <th>Auhtor</th>
        <th>Year</th>
        <th>Price</th>
    </tr>
 <xsl:for-each select="bookstore/book">

    <tr>
        <td><xsl:value-of select="@category" /></td>
        <td><xsl:value-of select="title" /></td>
        <td><xsl:value-of select="author" /></td>
        <td><xsl:value-of select="year" /></td>
        <td><xsl:value-of select="price" /></td>        
    </tr>
  </xsl:for-each>

</table>
</body>

</html>

</xsl:template>
</xsl:stylesheet>