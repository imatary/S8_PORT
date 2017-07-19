.class public Lcom/android/keyguard/sec/KeyguardXmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Unknown"


# instance fields
.field private itemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/sec/KeyguardWallpaperUser;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentElement:Ljava/lang/Boolean;

.field private mCurrentValue:Ljava/lang/String;

.field private mItem:Lcom/android/keyguard/sec/KeyguardWallpaperUser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mCurrentValue:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mItem:Lcom/android/keyguard/sec/KeyguardWallpaperUser;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->itemsList:Ljava/util/ArrayList;

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mCurrentValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    const-string/jumbo v0, "image_path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mItem:Lcom/android/keyguard/sec/KeyguardWallpaperUser;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getItemsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/sec/KeyguardWallpaperUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->itemsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getObject()Lcom/android/keyguard/sec/KeyguardWallpaperUser;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mItem:Lcom/android/keyguard/sec/KeyguardWallpaperUser;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mCurrentValue:Ljava/lang/String;

    const-string/jumbo v0, "User"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/KeyguardWallpaperUser;

    invoke-direct {v0}, Lcom/android/keyguard/sec/KeyguardWallpaperUser;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mItem:Lcom/android/keyguard/sec/KeyguardWallpaperUser;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->itemsList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardXmlParser;->mItem:Lcom/android/keyguard/sec/KeyguardWallpaperUser;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
