<?xml version='1.0'?>

<!--
  Specialization/customization layer for libstdc++.
  To output both chunked/single page HTML in UTF-8 charset

  XSL_STYLE_DIR is set in acinclude.m4

<xsl:import html="/html/docbook.xsl"/>
-->

<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		 version="1.0">
<xsl:import href="/html/docbook.xsl"/>
<xsl:output method="html" encoding="UTF-8" indent="no"/>
</xsl:stylesheet>
