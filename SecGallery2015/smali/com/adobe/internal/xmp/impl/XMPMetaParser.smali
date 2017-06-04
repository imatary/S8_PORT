.class public Lcom/adobe/internal/xmp/impl/XMPMetaParser;
.super Ljava/lang/Object;
.source "XMPMetaParser.java"


# static fields
.field private static final XMP_RDF:Ljava/lang/Object;

.field private static factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    invoke-static {}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method private static createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    :try_start_0
    const-string/jumbo v0, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://xml.org/sax/features/external-general-entities"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://xerces.apache.org/xerces2-j/features.html#disallow-doctype-decl"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://xml.org/sax/features/external-parameter-entities"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://xerces.apache.org/xerces2-j/features.html#external-parameter-entities"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_6

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v8, v5, :cond_1

    const-string/jumbo v6, "xpacket"

    move-object v5, p0

    check-cast v5, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v5}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p2, :cond_0

    const/4 v6, 0x2

    move-object v5, p0

    check-cast v5, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v5}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p2, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-eq v5, v6, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v8, v5, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "xmpmeta"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "xapmeta"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    const-string/jumbo v5, "adobe:ns:meta/"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0, v7, p2}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    :cond_3
    :goto_1
    return-object p2

    :cond_4
    if-nez p1, :cond_5

    const-string/jumbo v5, "RDF"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz p2, :cond_3

    aput-object p0, p2, v7

    const/4 v5, 0x1

    sget-object v6, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    aput-object v6, p2, v5

    goto :goto_1

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p2, v2

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    goto :goto_1
.end method

.method public static parse(Ljava/lang/Object;Lcom/adobe/internal/xmp/options/ParseOptions;)Lcom/adobe/internal/xmp/XMPMeta;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-static {p0}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p0, p1}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseXml(Ljava/lang/Object;Lcom/adobe/internal/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/options/ParseOptions;->getRequireXMPMeta()Z

    move-result v3

    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    sget-object v5, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    aget-object v4, v1, v4

    check-cast v4, Lorg/w3c/dom/Node;

    invoke-static {v4, p1}, Lcom/adobe/internal/xmp/impl/ParseRDF;->parse(Lorg/w3c/dom/Node;Lcom/adobe/internal/xmp/options/ParseOptions;)Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    move-result-object v2

    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setPacketHeader(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/options/ParseOptions;->getOmitNormalization()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2, p1}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->process(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/options/ParseOptions;)Lcom/adobe/internal/xmp/XMPMeta;

    move-result-object v2

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    new-instance p1, Lcom/adobe/internal/xmp/options/ParseOptions;

    invoke-direct {p1}, Lcom/adobe/internal/xmp/options/ParseOptions;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v2}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>()V

    goto :goto_1
.end method

.method private static parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    :try_start_0
    sget-object v2, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v3, "XML parsing failure"

    const/16 v4, 0xc9

    invoke-direct {v2, v3, v4, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v3, "XML Parser not correctly configured"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v1

    new-instance v2, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v3, "Error reading the XML-file"

    const/16 v4, 0xcc

    invoke-direct {v2, v3, v4, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
.end method

.method private static parseXml(Ljava/lang/Object;Lcom/adobe/internal/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0, p1}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseXmlFromInputStream(Ljava/io/InputStream;Lcom/adobe/internal/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    new-instance v0, Lcom/adobe/internal/xmp/impl/ByteBuffer;

    check-cast p0, [B

    check-cast p0, [B

    invoke-direct {v0, p0}, Lcom/adobe/internal/xmp/impl/ByteBuffer;-><init>([B)V

    invoke-static {v0, p1}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/adobe/internal/xmp/impl/ByteBuffer;Lcom/adobe/internal/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseXmlFromString(Ljava/lang/String;Lcom/adobe/internal/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseXmlFromBytebuffer(Lcom/adobe/internal/xmp/impl/ByteBuffer;Lcom/adobe/internal/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/16 v7, 0xc9

    :try_start_0
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/options/ParseOptions;->getDisallowDoctype()Z
    :try_end_1
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    :try_start_2
    sget-object v4, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const-string/jumbo v5, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-static {v3}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_3
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v4, "DOCTYPE is disallowed"

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/XMPException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/adobe/internal/xmp/XMPException;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/XMPException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc9

    invoke-direct {v4, v5, v6}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-instance v4, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v5, "Unsupported Encoding"

    const/16 v6, 0x9

    invoke-direct {v4, v5, v6, v0}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v4

    :cond_1
    :try_start_5
    invoke-virtual {v0}, Lcom/adobe/internal/xmp/XMPException;->getErrorCode()I

    move-result v4

    if-eq v4, v7, :cond_2

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/XMPException;->getErrorCode()I

    move-result v4

    const/16 v5, 0xcc

    if-ne v4, v5, :cond_5

    :cond_2
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/adobe/internal/xmp/impl/Latin1Converter;->convert(Lcom/adobe/internal/xmp/impl/ByteBuffer;)Lcom/adobe/internal/xmp/impl/ByteBuffer;

    move-result-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/ByteBuffer;->getEncoding()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/internal/xmp/impl/FixASCIIControlsReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/adobe/internal/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v4}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    goto :goto_1

    :cond_4
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    goto :goto_1

    :cond_5
    throw v0
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private static parseXmlFromInputStream(Ljava/io/InputStream;Lcom/adobe/internal/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/options/ParseOptions;->getDisallowDoctype()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    new-instance v0, Lcom/adobe/internal/xmp/impl/ByteBuffer;

    invoke-direct {v0, p0}, Lcom/adobe/internal/xmp/impl/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/adobe/internal/xmp/impl/ByteBuffer;Lcom/adobe/internal/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v3, "Error reading the XML-file"

    const/16 v4, 0xcc

    invoke-direct {v2, v3, v4, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
.end method

.method private static parseXmlFromString(Ljava/lang/String;Lcom/adobe/internal/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/options/ParseOptions;->getDisallowDoctype()Z
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v2, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const-string/jumbo v3, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_2
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/XMPException;->getErrorCode()I

    move-result v2

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Lcom/adobe/internal/xmp/impl/FixASCIIControlsReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/adobe/internal/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/adobe/internal/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    goto :goto_1

    :cond_1
    throw v0

    :catch_1
    move-exception v2

    goto :goto_0
.end method
