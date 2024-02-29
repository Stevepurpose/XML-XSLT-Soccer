<?xml version = "1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
<body  style="display: flex; flex-direction:column; justify-content:center; gap:2rem; background-color:green; color:white;">
<h1 style="margin:auto;">DATA GENERATED FROM XML/XSLT</h1>
<h1 style="margin:auto;">Homegrown Player Stats</h1>
<table border="1">
<tr>
<th>Name</th>
<th>Age</th>
<th>Position</th>
<th>goals</th>
<th>Saves</th>
<th>Interceptions</th>
</tr>
<xsl:for-each select="team/player">
    <tr>
    <td style="text-align:center"><xsl:value-of  select="name"/> </td>
     <td style="text-align:center"><xsl:value-of  select="age"/> </td>
      <td style="text-align:center"><xsl:value-of  select="position"/> </td>
       <td style="text-align:center"><xsl:value-of  select="goals"/> </td>
       <td style="text-align:center"><xsl:value-of  select="saves"/> </td>
        <td style="text-align:center"><xsl:value-of  select="interceptions"/> </td>
    </tr>
</xsl:for-each>
</table>

<!-- filter with for-each -->
<h2 style="margin:auto;">Goals Less Than 5</h2>
<table border="1">
<tr>
<th>Name</th>
<th>Age</th>
<th>Position</th>
<th>goals</th>
<th>Saves</th>
<th>Interceptions</th>
</tr>
<xsl:for-each select="team/player[goals &lt; 5]">
    <tr>
    <td style="text-align:center"><xsl:value-of  select="name"/> </td>
     <td style="text-align:center"><xsl:value-of  select="age"/> </td>
      <td style="text-align:center"><xsl:value-of  select="position"/> </td>
       <td style="text-align:center"><xsl:value-of  select="goals"/> </td>
       <td style="text-align:center"><xsl:value-of  select="saves"/> </td>
        <td style="text-align:center"><xsl:value-of  select="interceptions"/> </td>
    </tr>
</xsl:for-each>
</table>

<!-- sort by player name -->
<h2 style="margin:auto;">Sort Names Alphabetically</h2>
<table border="1">
<tr>
<th>Name</th>
<th>Age</th>
<th>Position</th>
<th>goals</th>
<th>Saves</th>
<th>Interceptions</th>
</tr>
<xsl:for-each select="team/player">
<xsl:sort select="name"/>
    <tr>
    <td style="text-align:center"><xsl:value-of  select="name"/> </td>
     <td style="text-align:center"><xsl:value-of  select="age"/> </td>
      <td style="text-align:center"><xsl:value-of  select="position"/> </td>
       <td style="text-align:center"><xsl:value-of  select="goals"/> </td>
       <td style="text-align:center"><xsl:value-of  select="saves"/> </td>
        <td style="text-align:center"><xsl:value-of  select="interceptions"/> </td>
    </tr>
</xsl:for-each>
</table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>