.class public Lcom/quramsoft/images/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field static final PRT:I = 0x2

.field static final TAG:I = 0x0

.field static final VALUE:I = 0x1


# instance fields
.field public crs:Lcom/quramsoft/images/QuramDngJavaCRS;

.field private db:Ljavax/xml/parsers/DocumentBuilder;

.field private dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private doc:Lorg/w3c/dom/Document;

.field public exif:Lcom/quramsoft/images/QuramDngJavaExif;

.field public exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

.field private is:Lorg/xml/sax/InputSource;

.field public root:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/quramsoft/images/XMLParser;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    iget-object v0, p0, Lcom/quramsoft/images/XMLParser;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/quramsoft/images/XMLParser;->db:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v0, p0, Lcom/quramsoft/images/XMLParser;->is:Lorg/xml/sax/InputSource;

    new-instance v0, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-direct {v0}, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;-><init>()V

    iput-object v0, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    new-instance v0, Lcom/quramsoft/images/QuramDngJavaExif;

    invoke-direct {v0}, Lcom/quramsoft/images/QuramDngJavaExif;-><init>()V

    iput-object v0, p0, Lcom/quramsoft/images/XMLParser;->exif:Lcom/quramsoft/images/QuramDngJavaExif;

    new-instance v0, Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-direct {v0}, Lcom/quramsoft/images/QuramDngJavaCRS;-><init>()V

    iput-object v0, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    iput-object v1, p0, Lcom/quramsoft/images/XMLParser;->doc:Lorg/w3c/dom/Document;

    iput-object v1, p0, Lcom/quramsoft/images/XMLParser;->root:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public getAllDesc(Lorg/w3c/dom/Node;)Z
    .locals 12

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v7

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    :cond_1
    move v7, v8

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v9, v5, v7

    const-string v10, "tiff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_5

    aget-object v9, v5, v7

    const-string v10, "dc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_5

    aget-object v9, v5, v7

    const-string v10, "xmp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_5

    aget-object v9, v5, v7

    const-string v10, "exif"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9

    :cond_5
    new-array v4, v11, [Ljava/lang/String;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-le v9, v8, :cond_8

    const/4 v6, 0x0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_6

    if-eqz v6, :cond_3

    aget-object v9, v4, v7

    invoke-virtual {p0, v9, v6}, Lcom/quramsoft/images/XMLParser;->setDataArrayToExif(Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v9, "rdf:Seq"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0, v2}, Lcom/quramsoft/images/XMLParser;->getSeqFromNode(Lorg/w3c/dom/Node;)[Ljava/lang/String;

    move-result-object v6

    :cond_7
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_3

    :cond_8
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {p0, v4}, Lcom/quramsoft/images/XMLParser;->setDataToExif([Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    aget-object v9, v5, v7

    const-string v10, "crs"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_d

    new-array v4, v11, [Ljava/lang/String;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-le v9, v8, :cond_c

    const/4 v6, 0x0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_4
    if-nez v2, :cond_a

    if-eqz v6, :cond_3

    aget-object v9, v4, v7

    invoke-virtual {p0, v9, v6}, Lcom/quramsoft/images/XMLParser;->setDataArrayToCrs(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v9, "rdf:Seq"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {p0, v2}, Lcom/quramsoft/images/XMLParser;->getSeqFromNode(Lorg/w3c/dom/Node;)[Ljava/lang/String;

    move-result-object v6

    :cond_b
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_4

    :cond_c
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {p0, v4}, Lcom/quramsoft/images/XMLParser;->setDataToCrs([Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p0, v0}, Lcom/quramsoft/images/XMLParser;->getAllDesc(Lorg/w3c/dom/Node;)Z

    goto/16 :goto_2
.end method

.method public getChildDesc(Lorg/w3c/dom/Node;)[[Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    if-nez p1, :cond_0

    move-object v2, v6

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/quramsoft/images/XMLParser;->getNumberOfChild(Lorg/w3c/dom/Node;)I

    move-result v1

    if-eqz v1, :cond_3

    new-array v3, v1, [Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    :cond_1
    const/4 v6, 0x2

    filled-new-array {v6, v1}, [I

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v6, 0x1

    aput-object v4, v2, v6

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v2, v6

    goto :goto_0
.end method

.method public getChildDescByTagName(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x0

    if-nez p1, :cond_0

    move-object v2, v8

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/quramsoft/images/XMLParser;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v9, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v6}, Lcom/quramsoft/images/XMLParser;->getNumberOfChild(Lorg/w3c/dom/Node;)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    new-array v3, v1, [Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/String;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    :cond_1
    const/4 v8, 0x2

    filled-new-array {v8, v1}, [I

    move-result-object v8

    const-class v9, Ljava/lang/String;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    aput-object v3, v2, v10

    const/4 v8, 0x1

    aput-object v4, v2, v8

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v2, v8

    goto :goto_0
.end method

.method public getDom(Ljava/io/ByteArrayInputStream;)Lorg/w3c/dom/Document;
    .locals 3

    iget-object v1, p0, Lcom/quramsoft/images/XMLParser;->is:Lorg/xml/sax/InputSource;

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    :try_start_0
    iget-object v1, p0, Lcom/quramsoft/images/XMLParser;->db:Ljavax/xml/parsers/DocumentBuilder;

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->is:Lorg/xml/sax/InputSource;

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lcom/quramsoft/images/XMLParser;->doc:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v1, p0, Lcom/quramsoft/images/XMLParser;->doc:Lorg/w3c/dom/Document;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNumberOfChild(Lorg/w3c/dom/Node;)I
    .locals 3

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getSeqFromNode(Lorg/w3c/dom/Node;)[Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "rdf:li"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public setDataArrayToCrs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v6, 0x0

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    array-length v7, p2

    new-array v7, v7, [Lcom/quramsoft/images/QuramDngJavaPoint;

    iput-object v7, v5, Lcom/quramsoft/images/QuramDngJavaCRS;->mToneCurve:[Lcom/quramsoft/images/QuramDngJavaPoint;

    const/4 v1, 0x0

    :goto_0
    array-length v5, p2

    if-lt v1, v5, :cond_1

    const/4 v2, 0x0

    aget-object v5, v3, v10

    const-string v7, "ToneCurve"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    array-length v7, p2

    move v5, v6

    :goto_1
    if-lt v5, v7, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    iget-object v5, v5, Lcom/quramsoft/images/QuramDngJavaCRS;->mToneCurve:[Lcom/quramsoft/images/QuramDngJavaPoint;

    new-instance v7, Lcom/quramsoft/images/QuramDngJavaPoint;

    invoke-direct {v7}, Lcom/quramsoft/images/QuramDngJavaPoint;-><init>()V

    aput-object v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v4, p2, v5

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    iget-object v8, v8, Lcom/quramsoft/images/QuramDngJavaCRS;->mToneCurve:[Lcom/quramsoft/images/QuramDngJavaPoint;

    aget-object v8, v8, v2

    aget-object v9, v0, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/quramsoft/images/QuramDngJavaPoint;->x:I

    iget-object v8, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    iget-object v8, v8, Lcom/quramsoft/images/QuramDngJavaCRS;->mToneCurve:[Lcom/quramsoft/images/QuramDngJavaPoint;

    aget-object v8, v8, v2

    aget-object v9, v0, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/quramsoft/images/QuramDngJavaPoint;->y:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public setDataArrayToExif(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v5, v2, v3

    const-string v7, "exif"

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v2, v6

    const-string v7, "ISOSpeedRatings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v4, p2

    if-lt v4, v6, :cond_2

    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    iput-wide v4, v7, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mISOSpeedRatings0:J

    iget-object v3, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v4, p2

    if-lt v4, v8, :cond_3

    aget-object v4, p2, v6

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1
    iput-wide v4, v3, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mISOSpeedRatings1:J

    iget-object v3, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v4, p2

    if-lt v4, v9, :cond_4

    aget-object v4, p2, v8

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_2
    iput-wide v4, v3, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mISOSpeedRatings2:J

    :cond_0
    :goto_3
    move v3, v6

    :cond_1
    return v3

    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_5
    aget-object v5, v2, v6

    const-string v7, "SubjectArea"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v7, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v4, p2

    if-lt v4, v6, :cond_6

    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_4
    iput-wide v4, v7, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mSubjectArea0:J

    iget-object v3, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v4, p2

    if-lt v4, v8, :cond_7

    aget-object v4, p2, v6

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_5
    iput-wide v4, v3, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mSubjectArea1:J

    iget-object v3, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v4, p2

    if-lt v4, v9, :cond_8

    aget-object v4, p2, v8

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_6
    iput-wide v4, v3, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mSubjectArea2:J

    iget-object v3, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v4, p2

    const/4 v5, 0x4

    if-lt v4, v5, :cond_9

    aget-object v4, p2, v9

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_7
    iput-wide v4, v3, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mSubjectArea3:J

    goto :goto_3

    :cond_6
    const-wide/16 v4, 0x0

    goto :goto_4

    :cond_7
    const-wide/16 v4, 0x0

    goto :goto_5

    :cond_8
    const-wide/16 v4, 0x0

    goto :goto_6

    :cond_9
    const-wide/16 v4, 0x0

    goto :goto_7

    :cond_a
    aget-object v5, v2, v6

    const-string v7, "CFAPattern"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    array-length v1, p2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iget-object v3, v3, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mCFAPattern:[B

    aget-object v4, p2, v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    aget-object v5, v2, v6

    const-string v7, "GPSLatitude"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v7, p2

    if-lt v7, v6, :cond_d

    aget-object v3, p2, v3

    :goto_9
    iput-object v3, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSLatitude0:Ljava/lang/String;

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v3, p2

    if-lt v3, v8, :cond_e

    aget-object v3, p2, v6

    :goto_a
    iput-object v3, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSLatitude1:Ljava/lang/String;

    iget-object v3, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v5, p2

    if-lt v5, v9, :cond_c

    aget-object v4, p2, v8

    :cond_c
    iput-object v4, v3, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSLatitude2:Ljava/lang/String;

    goto/16 :goto_3

    :cond_d
    move-object v3, v4

    goto :goto_9

    :cond_e
    move-object v3, v4

    goto :goto_a

    :cond_f
    aget-object v5, v2, v6

    const-string v7, "GPSLongitude"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v7, p2

    if-lt v7, v6, :cond_11

    aget-object v3, p2, v3

    :goto_b
    iput-object v3, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSLongitude0:Ljava/lang/String;

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v3, p2

    if-lt v3, v8, :cond_12

    aget-object v3, p2, v6

    :goto_c
    iput-object v3, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSLongitude1:Ljava/lang/String;

    iget-object v3, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v5, p2

    if-lt v5, v9, :cond_10

    aget-object v4, p2, v8

    :cond_10
    iput-object v4, v3, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSLongitude2:Ljava/lang/String;

    goto/16 :goto_3

    :cond_11
    move-object v3, v4

    goto :goto_b

    :cond_12
    move-object v3, v4

    goto :goto_c

    :cond_13
    aget-object v5, v2, v6

    const-string v7, "GPSTimeStamp"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v7, p2

    if-lt v7, v6, :cond_15

    aget-object v3, p2, v3

    :goto_d
    iput-object v3, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSTimeStamp0:Ljava/lang/String;

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v3, p2

    if-lt v3, v8, :cond_16

    aget-object v3, p2, v6

    :goto_e
    iput-object v3, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSTimeStamp1:Ljava/lang/String;

    iget-object v3, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v5, p2

    if-lt v5, v9, :cond_14

    aget-object v4, p2, v8

    :cond_14
    iput-object v4, v3, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSTimeStamp2:Ljava/lang/String;

    goto/16 :goto_3

    :cond_15
    move-object v3, v4

    goto :goto_d

    :cond_16
    move-object v3, v4

    goto :goto_e

    :cond_17
    aget-object v5, v2, v6

    const-string v7, "GPSDestLatitude"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v7, p2

    if-lt v7, v6, :cond_19

    aget-object v3, p2, v3

    :goto_f
    iput-object v3, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDestLatitude0:Ljava/lang/String;

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v3, p2

    if-lt v3, v8, :cond_1a

    aget-object v3, p2, v6

    :goto_10
    iput-object v3, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDestLatitude1:Ljava/lang/String;

    iget-object v3, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v5, p2

    if-lt v5, v9, :cond_18

    aget-object v4, p2, v8

    :cond_18
    iput-object v4, v3, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDestLatitude2:Ljava/lang/String;

    goto/16 :goto_3

    :cond_19
    move-object v3, v4

    goto :goto_f

    :cond_1a
    move-object v3, v4

    goto :goto_10

    :cond_1b
    aget-object v5, v2, v6

    const-string v7, "GPSDestLongitude"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v7, p2

    if-lt v7, v6, :cond_1d

    aget-object v3, p2, v3

    :goto_11
    iput-object v3, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDestLongitude0:Ljava/lang/String;

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v3, p2

    if-lt v3, v8, :cond_1e

    aget-object v3, p2, v6

    :goto_12
    iput-object v3, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDestLongitude1:Ljava/lang/String;

    iget-object v3, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    array-length v5, p2

    if-lt v5, v9, :cond_1c

    aget-object v4, p2, v8

    :cond_1c
    iput-object v4, v3, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDestLongitude2:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1d
    move-object v3, v4

    goto :goto_11

    :cond_1e
    move-object v3, v4

    goto :goto_12
.end method

.method public setDataToCrs([Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    aget-object v2, p1, v5

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, p1, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    aget-object v2, v0, v4

    const-string v3, "AutoBrightness"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mAutoBrightness:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    aget-object v2, v0, v4

    const-string v3, "AutoContrast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mAutoContrast:Z

    goto :goto_0

    :cond_3
    aget-object v2, v0, v4

    const-string v3, "AutoExposure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mAutoExposure:Z

    goto :goto_0

    :cond_4
    aget-object v2, v0, v4

    const-string v3, "AutoShadows"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mAutoShadows:Z

    goto :goto_0

    :cond_5
    aget-object v2, v0, v4

    const-string v3, "HasCrop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mHasCrop:Z

    goto :goto_0

    :cond_6
    aget-object v2, v0, v4

    const-string v3, "HasSettings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mHasSettings:Z

    goto :goto_0

    :cond_7
    aget-object v2, v0, v4

    const-string v3, "ChromaticAberrationB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mChromaticAberrationB:I

    goto/16 :goto_0

    :cond_8
    aget-object v2, v0, v4

    const-string v3, "ChromaticAberrationR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mChromaticAberrationR:I

    goto/16 :goto_0

    :cond_9
    aget-object v2, v0, v4

    const-string v3, "ColorNoiseReduction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mColorNoiseReduction:I

    goto/16 :goto_0

    :cond_a
    aget-object v2, v0, v4

    const-string v3, "Contrast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mContrast:I

    goto/16 :goto_0

    :cond_b
    aget-object v2, v0, v4

    const-string v3, "CropUnits"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mCropUnits:I

    goto/16 :goto_0

    :cond_c
    aget-object v2, v0, v4

    const-string v3, "GreenHue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mGreenHue:I

    goto/16 :goto_0

    :cond_d
    aget-object v2, v0, v4

    const-string v3, "GreenSaturation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mGreenSaturation:I

    goto/16 :goto_0

    :cond_e
    aget-object v2, v0, v4

    const-string v3, "LuminanceSmoothing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mLuminanceSmoothing:I

    goto/16 :goto_0

    :cond_f
    aget-object v2, v0, v4

    const-string v3, "RedHue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mRedHue:I

    goto/16 :goto_0

    :cond_10
    aget-object v2, v0, v4

    const-string v3, "RedSaturation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mRedSaturation:I

    goto/16 :goto_0

    :cond_11
    aget-object v2, v0, v4

    const-string v3, "Saturation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mSaturation:I

    goto/16 :goto_0

    :cond_12
    aget-object v2, v0, v4

    const-string v3, "Shadows"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mShadows:I

    goto/16 :goto_0

    :cond_13
    aget-object v2, v0, v4

    const-string v3, "Shadows"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mShadows:I

    goto/16 :goto_0

    :cond_14
    aget-object v2, v0, v4

    const-string v3, "Sharpness"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mSharpness:I

    goto/16 :goto_0

    :cond_15
    aget-object v2, v0, v4

    const-string v3, "Temperature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mTemperature:I

    goto/16 :goto_0

    :cond_16
    aget-object v2, v0, v4

    const-string v3, "Tint"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mTint:I

    goto/16 :goto_0

    :cond_17
    aget-object v2, v0, v4

    const-string v3, "VignetteAmount"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mVignetteAmount:I

    goto/16 :goto_0

    :cond_18
    aget-object v2, v0, v4

    const-string v3, "VignetteMidpoint"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mVignetteMidpoint:I

    goto/16 :goto_0

    :cond_19
    aget-object v2, v0, v4

    const-string v3, "CropTop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mCropTop:D

    goto/16 :goto_0

    :cond_1a
    aget-object v2, v0, v4

    const-string v3, "CropLeft"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mCropLeft:D

    goto/16 :goto_0

    :cond_1b
    aget-object v2, v0, v4

    const-string v3, "CropBottom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mCropBottom:D

    goto/16 :goto_0

    :cond_1c
    aget-object v2, v0, v4

    const-string v3, "CropRight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mCropRight:D

    goto/16 :goto_0

    :cond_1d
    aget-object v2, v0, v4

    const-string v3, "CropAngle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mCropAngle:D

    goto/16 :goto_0

    :cond_1e
    aget-object v2, v0, v4

    const-string v3, "CropWidth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mCropWidth:D

    goto/16 :goto_0

    :cond_1f
    aget-object v2, v0, v4

    const-string v3, "CropHeight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mCropHeight:D

    goto/16 :goto_0

    :cond_20
    aget-object v2, v0, v4

    const-string v3, "Exposure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mExposure:D

    goto/16 :goto_0

    :cond_21
    aget-object v2, v0, v4

    const-string v3, "CameraProfile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    iput-object v1, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mCameraProfile:Ljava/lang/String;

    goto/16 :goto_0

    :cond_22
    aget-object v2, v0, v4

    const-string v3, "RawFileName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    iput-object v1, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mRawFileName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_23
    aget-object v2, v0, v4

    const-string v3, "ToneCurveName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    iput-object v1, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mToneCurveName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_24
    aget-object v2, v0, v4

    const-string v3, "Version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    iput-object v1, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mVersion:Ljava/lang/String;

    goto/16 :goto_0

    :cond_25
    aget-object v2, v0, v4

    const-string v3, "WhiteBalance"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/quramsoft/images/XMLParser;->crs:Lcom/quramsoft/images/QuramDngJavaCRS;

    iput-object v1, v2, Lcom/quramsoft/images/QuramDngJavaCRS;->mWhiteBalance:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setDataToExif([Ljava/lang/String;)V
    .locals 11

    const/16 v10, 0x46

    const/16 v9, 0x41

    const/4 v8, 0x0

    const/4 v7, 0x1

    aget-object v5, p1, v8

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v7

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_0

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    aget-object v5, v3, v8

    const-string v6, "tiff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    aget-object v5, v3, v7

    const-string v6, "Make"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mMake:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    aget-object v5, v3, v7

    const-string v6, "Model"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mModel:Ljava/lang/String;

    goto :goto_0

    :cond_3
    aget-object v5, v3, v8

    const-string v6, "dc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    aget-object v5, v3, v7

    const-string v6, "description"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mImageDescription:Ljava/lang/String;

    goto :goto_0

    :cond_4
    aget-object v5, v3, v7

    const-string v6, "CreatorTool"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mArtist:Ljava/lang/String;

    goto :goto_0

    :cond_5
    aget-object v5, v3, v7

    const-string v6, "rights"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mCopyright:Ljava/lang/String;

    goto :goto_0

    :cond_6
    aget-object v5, v3, v8

    const-string v6, "xmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_9

    aget-object v5, v3, v7

    const-string v6, "ModifyDate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mDateTime:Ljava/lang/String;

    goto :goto_0

    :cond_7
    aget-object v5, v3, v7

    const-string v6, "CreatorTool"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mSoftware:Ljava/lang/String;

    goto :goto_0

    :cond_8
    aget-object v5, v3, v7

    const-string v6, "CreateDate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mDateTimeDigitized:Ljava/lang/String;

    goto :goto_0

    :cond_9
    aget-object v5, v3, v8

    const-string v6, "exif"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5c

    aget-object v5, v3, v7

    const-string v6, "ExifVersion"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mExifVersion:J

    goto/16 :goto_0

    :cond_a
    aget-object v5, v3, v7

    const-string v6, "FlashPixVersion"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mFlashPixVersion:J

    goto/16 :goto_0

    :cond_b
    aget-object v5, v3, v7

    const-string v6, "ColorSpace"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mColorSpace:J

    goto/16 :goto_0

    :cond_c
    aget-object v5, v3, v7

    const-string v6, "Gamma"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGamma:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    aget-object v5, v3, v7

    const-string v6, "ComponentsConfiguration"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mComponentsConfiguration:J

    goto/16 :goto_0

    :cond_e
    aget-object v5, v3, v7

    const-string v6, "PixelXDimension"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mPixelXDimension:J

    goto/16 :goto_0

    :cond_f
    aget-object v5, v3, v7

    const-string v6, "PixelYDimension"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mPixelYDimension:J

    goto/16 :goto_0

    :cond_10
    aget-object v5, v3, v7

    const-string v6, "UserComment"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mUserComment:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    aget-object v5, v3, v7

    const-string v6, "DateTimeOriginal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mDateTimeOriginal:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    aget-object v5, v3, v7

    const-string v6, "ExposureTime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mExposureTime:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    aget-object v5, v3, v7

    const-string v6, "FNumber"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mFNumber:Ljava/lang/String;

    goto/16 :goto_0

    :cond_14
    aget-object v5, v3, v7

    const-string v6, "ExposureProgram"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mExposureProgram:J

    goto/16 :goto_0

    :cond_15
    aget-object v5, v3, v7

    const-string v6, "SensitivityType"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mSensitivityType:J

    goto/16 :goto_0

    :cond_16
    aget-object v5, v3, v7

    const-string v6, "StandardOutputSensitivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mStandardOutputSensitivity:J

    goto/16 :goto_0

    :cond_17
    aget-object v5, v3, v7

    const-string v6, "RecommendedExposureIndex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mRecommendedExposureIndex:J

    goto/16 :goto_0

    :cond_18
    aget-object v5, v3, v7

    const-string v6, "ISOSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mISOSpeed:J

    goto/16 :goto_0

    :cond_19
    aget-object v5, v3, v7

    const-string v6, "ISOSpeedLatitudeyyy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mISOSpeedLatitudeyyy:J

    goto/16 :goto_0

    :cond_1a
    aget-object v5, v3, v7

    const-string v6, "ISOSpeedLatitudezzz"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mISOSpeedLatitudezzz:J

    goto/16 :goto_0

    :cond_1b
    aget-object v5, v3, v7

    const-string v6, "ShutterSpeedValue"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mShutterSpeedValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1c
    aget-object v5, v3, v7

    const-string v6, "ApertureValue"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mApertureValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1d
    aget-object v5, v3, v7

    const-string v6, "BrightnessValue"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mBrightnessValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1e
    aget-object v5, v3, v7

    const-string v6, "ExposureBiasValue"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mExposureBiasValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1f
    aget-object v5, v3, v7

    const-string v6, "MaxApertureValue"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mMaxApertureValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_20
    aget-object v5, v3, v7

    const-string v6, "SubjectDistance"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mSubjectDistance:Ljava/lang/String;

    goto/16 :goto_0

    :cond_21
    aget-object v5, v3, v7

    const-string v6, "MeteringMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mMeteringMode:J

    goto/16 :goto_0

    :cond_22
    aget-object v5, v3, v7

    const-string v6, "LightSource"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mLightSource:J

    goto/16 :goto_0

    :cond_23
    aget-object v5, v3, v7

    const-string v6, "Flash"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mFlash:J

    goto/16 :goto_0

    :cond_24
    aget-object v5, v3, v7

    const-string v6, "FocalLength"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mFocalLength:Ljava/lang/String;

    goto/16 :goto_0

    :cond_25
    aget-object v5, v3, v7

    const-string v6, "FocalPlaneXResolution"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mFocalPlaneXResolution:Ljava/lang/String;

    goto/16 :goto_0

    :cond_26
    aget-object v5, v3, v7

    const-string v6, "FocalPlaneYResolution"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mFocalPlaneYResolution:Ljava/lang/String;

    goto/16 :goto_0

    :cond_27
    aget-object v5, v3, v7

    const-string v6, "FocalPlaneResolutionUnit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mFocalPlaneResolutionUnit:J

    goto/16 :goto_0

    :cond_28
    aget-object v5, v3, v7

    const-string v6, "ExposureIndex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mExposureIndex:Ljava/lang/String;

    goto/16 :goto_0

    :cond_29
    aget-object v5, v3, v7

    const-string v6, "SensingMethod"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mSensingMethod:J

    goto/16 :goto_0

    :cond_2a
    aget-object v5, v3, v7

    const-string v6, "FileSource"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mFileSource:J

    goto/16 :goto_0

    :cond_2b
    aget-object v5, v3, v7

    const-string v6, "SceneType"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mSceneType:J

    goto/16 :goto_0

    :cond_2c
    aget-object v5, v3, v7

    const-string v6, "CustomRendered"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mCustomRendered:J

    goto/16 :goto_0

    :cond_2d
    aget-object v5, v3, v7

    const-string v6, "ExposureMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mExposureMode:J

    goto/16 :goto_0

    :cond_2e
    aget-object v5, v3, v7

    const-string v6, "WhiteBalance"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mWhiteBalance:J

    goto/16 :goto_0

    :cond_2f
    aget-object v5, v3, v7

    const-string v6, "DigitalZoomRatio"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mDigitalZoomRatio:Ljava/lang/String;

    goto/16 :goto_0

    :cond_30
    aget-object v5, v3, v7

    const-string v6, "FocalLengthIn35mmFilm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mFocalLengthIn35mmFilm:J

    goto/16 :goto_0

    :cond_31
    aget-object v5, v3, v7

    const-string v6, "SceneCaptureType"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mSceneCaptureType:J

    goto/16 :goto_0

    :cond_32
    aget-object v5, v3, v7

    const-string v6, "GainControl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGainControl:J

    goto/16 :goto_0

    :cond_33
    aget-object v5, v3, v7

    const-string v6, "Contrast"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mContrast:J

    goto/16 :goto_0

    :cond_34
    aget-object v5, v3, v7

    const-string v6, "Saturation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mSaturation:J

    goto/16 :goto_0

    :cond_35
    aget-object v5, v3, v7

    const-string v6, "Sharpness"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mSharpness:J

    goto/16 :goto_0

    :cond_36
    aget-object v5, v3, v7

    const-string v6, "SubjectDistanceRange"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mSubjectDistanceRange:J

    goto/16 :goto_0

    :cond_37
    aget-object v5, v3, v7

    const-string v6, "LensMake"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mLensMake:Ljava/lang/String;

    goto/16 :goto_0

    :cond_38
    aget-object v5, v3, v7

    const-string v6, "LensSerialNumber"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mLensSerialNumber:Ljava/lang/String;

    goto/16 :goto_0

    :cond_39
    aget-object v5, v3, v7

    const-string v6, "GPSVersionID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSVersionID:J

    goto/16 :goto_0

    :cond_3a
    aget-object v5, v3, v7

    const-string v6, "GPSLatitudeRef"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSLatitudeRef:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3b
    aget-object v5, v3, v7

    const-string v6, "GPSLongitudeRef"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSLongitudeRef:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3c
    aget-object v5, v3, v7

    const-string v6, "GPSAltitudeRef"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSAltitudeRef:J

    goto/16 :goto_0

    :cond_3d
    aget-object v5, v3, v7

    const-string v6, "GPSAltitude"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSAltitude:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3e
    aget-object v5, v3, v7

    const-string v6, "GPSSatellites"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSSatellites:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3f
    aget-object v5, v3, v7

    const-string v6, "GPSStatus"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSStatus:Ljava/lang/String;

    goto/16 :goto_0

    :cond_40
    aget-object v5, v3, v7

    const-string v6, "GPSMeasureMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSMeasureMode:Ljava/lang/String;

    goto/16 :goto_0

    :cond_41
    aget-object v5, v3, v7

    const-string v6, "GPSDOP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDOP:Ljava/lang/String;

    goto/16 :goto_0

    :cond_42
    aget-object v5, v3, v7

    const-string v6, "GPSSpeedRef"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSSpeedRef:Ljava/lang/String;

    goto/16 :goto_0

    :cond_43
    aget-object v5, v3, v7

    const-string v6, "GPSSpeed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSSpeed:Ljava/lang/String;

    goto/16 :goto_0

    :cond_44
    aget-object v5, v3, v7

    const-string v6, "GPSTrackRef"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSTrackRef:Ljava/lang/String;

    goto/16 :goto_0

    :cond_45
    aget-object v5, v3, v7

    const-string v6, "GPSTrack"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSTrack:Ljava/lang/String;

    goto/16 :goto_0

    :cond_46
    aget-object v5, v3, v7

    const-string v6, "GPSImgDirectionRef"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSImgDirectionRef:Ljava/lang/String;

    goto/16 :goto_0

    :cond_47
    aget-object v5, v3, v7

    const-string v6, "GPSImgDirection"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSImgDirection:Ljava/lang/String;

    goto/16 :goto_0

    :cond_48
    aget-object v5, v3, v7

    const-string v6, "GPSMapDatum"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSMapDatum:Ljava/lang/String;

    goto/16 :goto_0

    :cond_49
    aget-object v5, v3, v7

    const-string v6, "GPSDestLatitudeRef"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDestLatitudeRef:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4a
    aget-object v5, v3, v7

    const-string v6, "GPSDestLongitudeRef"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDestLongitudeRef:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4b
    aget-object v5, v3, v7

    const-string v6, "GPSDestBearingRef"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDestBearingRef:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4c
    aget-object v5, v3, v7

    const-string v6, "GPSDestBearing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDestBearing:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4d
    aget-object v5, v3, v7

    const-string v6, "GPSDestDistanceRef"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDestDistanceRef:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4e
    aget-object v5, v3, v7

    const-string v6, "GPSDestDistance"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDestDistance:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4f
    aget-object v5, v3, v7

    const-string v6, "GPSProcessingMethod"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSProcessingMethod:Ljava/lang/String;

    goto/16 :goto_0

    :cond_50
    aget-object v5, v3, v7

    const-string v6, "GPSAreaInformation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSAreaInformation:Ljava/lang/String;

    goto/16 :goto_0

    :cond_51
    aget-object v5, v3, v7

    const-string v6, "GPSDateStamp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDateStamp:Ljava/lang/String;

    goto/16 :goto_0

    :cond_52
    aget-object v5, v3, v7

    const-string v6, "GPSDifferential"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSDifferential:J

    goto/16 :goto_0

    :cond_53
    aget-object v5, v3, v7

    const-string v6, "GPSHPositioningError"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mGPSHPositioningError:Ljava/lang/String;

    goto/16 :goto_0

    :cond_54
    aget-object v5, v3, v7

    const-string v6, "InteroperabilityIndex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mInteroperabilityIndex:Ljava/lang/String;

    goto/16 :goto_0

    :cond_55
    aget-object v5, v3, v7

    const-string v6, "Columns"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mCFARepeatPatternRows:J

    goto/16 :goto_0

    :cond_56
    aget-object v5, v3, v7

    const-string v6, "Rows"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mCFARepeatPatternRows:J

    goto/16 :goto_0

    :cond_57
    aget-object v5, v3, v7

    const-string v6, "ImageUniqueID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-lt v2, v5, :cond_58

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-boolean v7, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mImageUniqueIDExist:Z

    goto/16 :goto_0

    :cond_58
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    mul-int/lit8 v6, v2, 0x2

    aget-byte v1, v5, v6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v0, v5, v6

    if-lt v1, v9, :cond_59

    if-gt v1, v10, :cond_59

    add-int/lit8 v5, v1, -0x41

    add-int/lit8 v5, v5, 0xa

    int-to-byte v1, v5

    :goto_2
    if-lt v0, v9, :cond_5a

    if-gt v0, v10, :cond_5a

    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    int-to-byte v0, v5

    :goto_3
    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iget-object v5, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mImageUniqueID:[B

    shl-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v0

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_59
    add-int/lit8 v5, v1, -0x30

    int-to-byte v1, v5

    goto :goto_2

    :cond_5a
    add-int/lit8 v5, v0, -0x30

    int-to-byte v0, v5

    goto :goto_3

    :cond_5b
    aget-object v5, v3, v7

    const-string v6, "DateTimeDigitized"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mDateTimeDigitized:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5c
    aget-object v5, v3, v8

    const-string v6, "exifEX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v3, v7

    const-string v6, "CameraOwnerName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mOwnerName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5d
    aget-object v5, v3, v7

    const-string v6, "BodySerialNumber"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mCameraSerialNumber:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5e
    aget-object v5, v3, v7

    const-string v6, "LensModel"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/quramsoft/images/XMLParser;->exif_primitive:Lcom/quramsoft/images/QuramDngJavaExifPrimitive;

    iput-object v4, v5, Lcom/quramsoft/images/QuramDngJavaExifPrimitive;->mLensName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setRootNode(Lorg/w3c/dom/Document;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "*"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    iput-object v1, p0, Lcom/quramsoft/images/XMLParser;->root:Lorg/w3c/dom/Node;

    goto :goto_0
.end method
