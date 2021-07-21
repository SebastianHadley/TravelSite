<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet href="mystyle.css"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
	<xsl:template match="Holidays">
		<html>
			<head>
				<meta charset="UTF-8"/>
				<title>Holiday Packages</title>
				<link href="myStyle.css" rel="stylesheet" type="text/css"/>
				<style type="text/css">
				img{
				float:left;
				height:25%;
				padding:0%;
				}
				
				</style>

			</head>
			<body>
				<h1>Holidays</h1>
				<xsl:apply-templates select="Package">
				<xsl:sort select="GeneralInformation/PackageName"/>
				</xsl:apply-templates>
				<img src="Images/Shinjuku.jpg" alt="fuji"/>
				<address>
				<em>Sebastian Hadley<br/>Sebastian.Hadley@hotmail.com<br/>0402623341</em>
				<br/><a href="Index.html">Index</a>
				<br/><a href="DataCollection.html">Submissions</a>
				<br/><a href="Aboutus.html">About Us</a>
				<br/><a href="TandCs.html">Terms and Conditions</a>
				<br/><a href="privacy.html">Privacy Policy</a>
				<br/><a href="LuxuryHolidays.xml">Luxury Holidays</a>
				<br/><a href="BeachHolidays.xml">Beach Holidays</a>
				</address>
			</body>
		</html>
	
	</xsl:template>
	<xsl:template match="Package">
	<br/>
	<xsl:value-of select="GeneralInformation/PackageName"/>
	<xsl:text> Costs </xsl:text>
	<xsl:value-of select="Details/Cost"/>
	<br/>
	<xsl:value-of select="GeneralInformation/Description"/>
	<br/>
	<xsl:text>This holiday lasts</xsl:text>
	<xsl:value-of select="Details/Nights"/>
	<xsl:text> Nights and has Coupon code </xsl:text>
	<xsl:value-of select="Details/CouponCode"/>
	<br/>
	<xsl:value-of select="Details/Reviews"/>
	<br/>
	<xsl:text>Accomodation Options Below</xsl:text>
	<br/>
	<xsl:apply-templates select="Details/Accommodation"/>
	<xsl:text>Links and Sources Below</xsl:text>
	<br/>
	<xsl:value-of select="Details/WebPage"/>
	<br/>
	<xsl:value-of select="Details/Picture"/>
	<br/>
	<xsl:value-of select="GeneralInformation/ContactInfo"/>
	<hr/>
	</xsl:template> 
	<xsl:template match="Accommodation">
	<xsl:text>Staying at </xsl:text>
	<xsl:value-of select="Location"/>
	<xsl:text>, will cost an additional </xsl:text>
	<xsl:value-of select="AdditionalCost"/>
	<br/>
	<xsl:text>this accomodation has </xsl:text>
	<xsl:value-of select="Features"/>
	<xsl:text> as additional features. </xsl:text>
	<xsl:value-of select="Rating"/>
	<br/>
	</xsl:template>
</xsl:stylesheet>