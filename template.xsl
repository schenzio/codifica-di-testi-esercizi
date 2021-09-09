<?xml version="1.0" encoding="UTF-8"?>
<!--
    Progetto di esame del corso Codifica di testi 2020/2021
    Studente: Matteo Scannavini
    Matricola: 578210
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/> 
                <xsl:element name="meta">
                    <xsl:attribute name="name">author</xsl:attribute>
                    <xsl:attribute name="content">
                        <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt[1]/tei:name"/>
                    </xsl:attribute>
                </xsl:element>
                <link rel="stylesheet" href="stile.css"></link>
            </head>
            <body>
            <header>
                <nav>
                    <ul>
                        <li><a href ="#intro">home</a></li>
                        <li><a href ="#c153">cartolina 153</a></li>
                        <li><a href ="#c162">cartolina 162</a></li>
                        <li><a href ="#credits">crediti</a></li>
                    </ul> 
                </nav>

            </header>
            <div id="container">
                <div id="intro" class="content">
                <h1>
                    <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </h1>
                 <h3>Informazioni sul corpus</h3>
                    <p>Questo progetto realizza l'edizione digitale di due cartoline artistiche della I guerra mondiale.</p>
                    <!--<p>
                        Questo progetto realizza l'edizione digitale di due cartoline artistiche della I guerra mondiale, appartenenti al 
                        <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt[2]/tei:name"/> e conservate nel 
                        <xsl:value-of select="tei:teiCorpus/tei:teiHeader//tei:repository"/>, presso
                        <xsl:value-of select="tei:teiCorpus/tei:teiHeader//tei:msIdentifier/tei:settlement"/>.
                    </p>-->
                    <ul>
                        <li><b>Editore: </b><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:publisher"/></li>
                        <li><b>Luogo di pubblicazione: </b><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:pubPlace"/></li>
                        <li><b>Anno di pubblicazione: </b><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:date"/></li>
                        <li><b>Disponibilità: </b><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:availability"/></li>
                        <li>
                            <b>Distribuzione: </b><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:distributor"/>
                            (<xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:address/tei:addrLine[1]"/>)
                        </li>
                        <li><b>Ente di appartenenza: </b><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt[2]/tei:name"/></li>
                        <li>
                            <b>Luogo di conservazione: </b><xsl:value-of select="tei:teiCorpus/tei:teiHeader//tei:repository"/>, 
                            <xsl:value-of select="tei:teiCorpus/tei:teiHeader//tei:msIdentifier/tei:settlement"/>,
                            <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:country"/>.
                        </li>
                    </ul>
                    <div id="list">
                        <ul><b>Persone citate:</b>
                            <xsl:for-each select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person">
                                <li><xsl:value-of select="tei:persName"/> <xsl:value-of select="tei:occupation"/></li>
                            </xsl:for-each>
                        </ul>
                        <ul><b>Luoghi citati:</b>
                            <xsl:for-each select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace/tei:place/tei:placeName">
                                <li><xsl:value-of select="."/></li>
                            </xsl:for-each>
                        </ul>
                    </div>   
                </div>
                <hr/>
                <div id="c153" class="content">
                    <xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:teiHeader/tei:fileDesc/tei:titleStmt"/>
                    <xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:teiHeader"/>
                    <p>
                        Questa cartolina è stata scritta il giorno
                        <xsl:value-of select="tei:teiCorpus/tei:TEI[1]/tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction/tei:date[2]"/>
                         da <xsl:value-of select="tei:teiCorpus/tei:teiHeader//tei:person[@xml:id='G']/tei:persName/tei:forename"/>,
                        presso <xsl:value-of select="tei:teiCorpus/tei:teiHeader//tei:place[@xml:id='MO']/tei:placeName"/>
                        e inviata a <xsl:value-of select="tei:teiCorpus/tei:teiHeader//tei:person[@xml:id='OT']/tei:persName"/>, a
                        <xsl:value-of select="tei:teiCorpus/tei:teiHeader//tei:place[@xml:id='RV']/tei:placeName"/>
                       .
                    </p>
                    <p>
                    <xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:teiHeader/tei:fileDesc/tei:notesStmt"/>
                    </p>
                     <h3>Fronte</h3>
                    <div id="c153fronte" class="fronte">                    
                        <div class="img-box">
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="tei:teiCorpus/tei:TEI/tei:facsimile/tei:surface[@xml:id='cart153F']/tei:graphic/@url"/>
                                </xsl:attribute>
                            </xsl:element>
                        </div>
                        <xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text"/>
                    </div>
                    <h3>Retro</h3>
                    <div id="c153retro" class="content">
                        <div class="img-box-retro">
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="tei:teiCorpus/tei:TEI/tei:facsimile/tei:surface[@xml:id='cart153R']/tei:graphic/@url"/>
                                </xsl:attribute>
                            </xsl:element>
                        </div>
                        <div class="retro_code">
                            <div class="lefthalf">
                                <div class="message">
                                    <p><xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text//tei:opener"/></p>
                                    <p><xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[1]/tei:div[1]/tei:p"/></p>
                                    <p><xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text//tei:closer"/></p>
                                </div>
                                <div class="extra">
                                    <xsl:for-each select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[1]/tei:div[2]/tei:p">
                                        <p><xsl:apply-templates select="."/></p> 
                                    </xsl:for-each>
                                </div>
                            </div>
                            <div class="righthalf">
                                <p><xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text//tei:idno"/></p>
                                <div class="destination">                  
                                    <p class="right"><xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text//tei:stamp/tei:mentioned"/></p>
                                    <p class="right"><xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text//tei:stamp/tei:date"/></p>
                                    <p class="right"><xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text//tei:stamp[2]"/></p>
                                <xsl:for-each select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[2]/tei:div/tei:p[2]/tei:address/tei:addrLine">
                                    <p><xsl:apply-templates select="."/></p>
                                </xsl:for-each>
                                </div>
                            </div>
                        </div>   
                    </div>
                </div>
                <hr/>
                <div id="c162" class="content">
                    <xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:teiHeader/tei:fileDesc/tei:titleStmt"/>
                    <xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:teiHeader"/>
                    <p>
                        Questa cartolina è stata scritta il giorno 
                        <xsl:value-of select="tei:teiCorpus/tei:TEI[2]/tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction/tei:date"/> 
                        da un anonimo presso <xsl:value-of select="tei:teiCorpus/tei:teiHeader//tei:place[@xml:id='RV']/tei:placeName"/>.
                    </p>
                    <xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:teiHeader/tei:fileDesc/tei:notesStmt"/>
                    <h3>Fronte</h3>
                    <div id="c162fronte" class="fronte">
                        <div class="img-box">
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="tei:teiCorpus/tei:TEI/tei:facsimile/tei:surface[@xml:id='cart162F']/tei:graphic/@url"/>
                                </xsl:attribute>
                            </xsl:element>
                        </div>
                        <xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text"/>
                    </div>
                    <h3>Retro</h3>
                    <div id="c162retro" class="content">           
                        <div class="img-box-retro">
                            <xsl:element name="img">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="tei:teiCorpus/tei:TEI/tei:facsimile/tei:surface[@xml:id='cart162R']/tei:graphic/@url"/>
                                </xsl:attribute>
                            </xsl:element>
                        </div>
                        <div class="retro_code">
                            <div class="lefthalf">
                                <p><xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text//tei:opener"/></p>
                                <div class="extra">
                                    <xsl:for-each select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[2]/tei:div[1]/tei:div[2]/tei:p">
                                        <p><xsl:apply-templates select="."/></p> 
                                    </xsl:for-each>
                                </div>
                            </div>
                            <div class="righthalf">
                                <p><xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text//tei:idno"/></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer id="credits" class="content">
                <h2>Crediti</h2>
                <ul>
                    <li>
                        <b><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt[1]/tei:resp"/></b>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt[1]/tei:name"/>
                    </li>
                    <xsl:for-each select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt">
                        <li>
                            <b><xsl:value-of select="tei:resp"/></b>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="tei:name"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </footer>
            </body>
        </html>
    </xsl:template>
    <!--titoli cartoline-->
    <xsl:template match="tei:teiCorpus/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt">
        <h2><xsl:value-of select="tei:title"/></h2>
    </xsl:template>
    <!--Descrizione cartoline-->
    <xsl:template match="tei:teiCorpus/tei:TEI/tei:teiHeader">
        <div class="meta">
            <h3>Descrizione</h3>
            <ul>
                <li><b>Codice identificativo: </b><xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno"/></li>
                <li><b>Tipo di oggetto: </b><xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:objectType"/></li>
                <li><b>Materiale: </b><xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:material"/></li>
                <li>
                    <b>Dimensioni: </b>
                    <xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:height"/>
                    <xsl:text>x</xsl:text>
                    <xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:width"/>cm
                </li>
                <li><b>Stato di conservazione: </b><xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/></li>
                <li><b>Lingua: </b><xsl:value-of select="tei:profileDesc/tei:langUsage/tei:language"/></li>
                <xsl:if test="tei:fileDesc/tei:sourceDesc/tei:bibl/tei:author">   
                    <li><b>Autore dell'opera a fronte: </b><xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:bibl/tei:author"/></li>
                </xsl:if>
            </ul>
        </div>
    </xsl:template>
    <!--note-->
    <xsl:template match="tei:teiCorpus/tei:TEI/tei:teiHeader/tei:fileDesc/tei:notesStmt">
        <ol><b>Note</b>
            <xsl:for-each select="tei:note">
                <li><xsl:value-of select="."/></li>
            </xsl:for-each>
        </ol>
    </xsl:template>
    <!--descrizione fronte-->
    <xsl:template match="tei:teiCorpus/tei:TEI/tei:text">
        <div class="frontDesc">
            <p><b>Titolo: </b><xsl:value-of select="tei:body/tei:div[1]/tei:figure/tei:head"/><br/></p>
            <p><b>Descrizione: </b><xsl:value-of select="tei:body/tei:div[1]/tei:figure/tei:figDesc"/></p>
        </div>
    </xsl:template>
    <!--gap-->
    <xsl:template match="tei:gap">
        <span class="bordeaux">[illegibile]</span>
	</xsl:template>
    <!--unclear-->
    <xsl:template match="tei:unclear">
        <span class="bordeaux">[non chiaro per sbiadimento] </span>
        <xsl:value-of select="."/>
	</xsl:template>
    <!--inizio riga-->
    <xsl:template match="tei:lb">
        <br/>
	</xsl:template>
    <!--choice-->
    <xsl:template match="tei:choice">
        <xsl:value-of select="tei:abbr"/>
        <span class="purple"> [interpretazione: <xsl:value-of select="tei:expan"/>]</span>
     </xsl:template>
</xsl:stylesheet>