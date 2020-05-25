<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="/">
  <html>
  <head>
  <title>Breakfast Menu</title>
 <style type="text/css" media="screen">
 @import url('https://fonts.googleapis.com/css?family=Montserrat');
    body  {
  
    background-color: #cccccc;
}   
h1 {
margin-left: 500px;
color:white;
font-family: 'Montserrat', sans-serif;
}  
table {
	margin: 1em;
	padding: 1em;
	border: 1px blue }
h3  {
  font-family: 'Montserrat', sans-serif;
	font-size: large;
  color: white;
	background-color: #e36727;
	border-bottom: 3px black 
}
tr {
background-color: #d85a4c4f;
font-family: 'Montserrat', sans-serif;
}
td {
      color: white;
    background-color: #091636;
    box-shadow: 4px 4px 13px 2px #0ba2ff66;
}
th {
    background-color: #e36727;
    box-shadow: 0 0 14px 3px #5d503f;

    font-family: 'Montserrat', sans-serif;
}

      </style>
  </head>
  
  <body background="3.jpg">
  <h1>BBB</h1>

  <h3>Berlin</h3>
       <img src="2.png" alt="nice picture" style="width:118px;height:90px;"/>
        <table width="820"  cellspacing="5" cellpadding="10">
  
          <tr>
            <th>name</th>
            <th>referent</th>
            <th>termin</th>
            <th>beschreibung</th>
            
          </tr>
          <xsl:call-template name="kurs"/>
          
        </table>
      
   </body>
   </html>
   </xsl:template>
  <xsl:template name="kurs">
  
    <xsl:for-each select="//kurs">
     <tr>
        <td width="80" height="9">
           
          <xsl:value-of select="@name"/>
         <img src="5.gif" alt="nice picture" style="width:100px;height:70px;"/>
        </td>
       <td width="80" height="9">
           
          <xsl:value-of select="referent"/>
         
        </td>
        
         <td width="80" height="9">
         
          <xsl:value-of select="termin"/>
        </td>
         <td width="2" height="9">
          <xsl:value-of select="beschreibung"/>
          
        </td>
      </tr>
     
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>