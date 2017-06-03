.class Lorg/apache/harmony/xml/ExpatParser;
.super Ljava/lang/Object;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;,
        Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;,
        Lorg/apache/harmony/xml/ExpatParser$EntityParser;,
        Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;,
        Lorg/apache/harmony/xml/ExpatParser$ParseException;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1fa0

.field static final CHARACTER_ENCODING:Ljava/lang/String; = "UTF-16"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final OUTSIDE_START_ELEMENT:Ljava/lang/String; = "Attributes can only be used within the scope of startElement()."

.field private static final TIMEOUT:I = 0x4e20


# instance fields
.field private attributeCount:I

.field private attributePointer:J

.field private final attributes:Lorg/apache/harmony/xml/ExpatAttributes;

.field private final encoding:Ljava/lang/String;

.field private inStartElement:Z

.field private final locator:Lorg/xml/sax/Locator;

.field private pointer:J

.field private final publicId:Ljava/lang/String;

.field private final systemId:Ljava/lang/String;

.field private final xmlReader:Lorg/apache/harmony/xml/ExpatReader;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/xml/ExpatParser;)I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    return v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/xml/ExpatParser;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    return-wide v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/xml/ExpatParser;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    return v0
.end method

.method static synthetic -get3(Lorg/apache/harmony/xml/ExpatParser;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    return-wide v0
.end method

.method static synthetic -get4(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/apache/harmony/xml/ExpatParser;)I
    .locals 1

    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->column()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/apache/harmony/xml/ExpatParser;)I
    .locals 1

    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->line()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->staticInitialize(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iput-wide p3, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    iput-object p6, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    iput-object p4, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    if-nez p1, :cond_0

    const-string/jumbo p1, "UTF-8"

    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lorg/apache/harmony/xml/ExpatParser;->initialize(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    return-void
.end method

.method private native appendBytes(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private native appendChars(J[CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private native appendString(JLjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private static native cloneAttributes(JI)J
.end method

.method private column()I
    .locals 2

    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    invoke-static {v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->column(J)I

    move-result v0

    return v0
.end method

.method private static native column(J)I
.end method

.method private static native createEntityParser(JLjava/lang/String;)J
.end method

.method private endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    :cond_0
    return-void
.end method

.method private native initialize(Ljava/lang/String;Z)J
.end method

.method private line()I
    .locals 2

    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    invoke-static {v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->line(J)I

    move-result v0

    return v0
.end method

.method private static native line(J)I
.end method

.method static openUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method private parseExternalEntity(Lorg/apache/harmony/xml/ExpatParser;Lorg/xml/sax/InputSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v3, "<externalEntity>"

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/Reader;)V

    const-string/jumbo v3, "</externalEntity>"

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :cond_0
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    const-string/jumbo v3, "<externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V

    invoke-direct {p1, v0}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    const-string/jumbo v3, "</externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_1
    move-exception v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :cond_1
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    const-string/jumbo v4, "No input specified."

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    throw v3

    :cond_2
    invoke-static {v2}, Lorg/apache/harmony/xml/ExpatParser;->openUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :try_start_2
    const-string/jumbo v3, "<externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V

    invoke-direct {p1, v0}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    const-string/jumbo v3, "</externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_2
    move-exception v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private parseFragment(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v1, 0x1fa0

    new-array v4, v1, [B

    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v1, -0x1

    if-eq v6, v1, :cond_0

    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendBytes(J[BII)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    throw v1

    :cond_0
    return-void
.end method

.method private parseFragment(Ljava/io/Reader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v1, 0xfd0

    new-array v4, v1, [C

    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/Reader;->read([C)I

    move-result v6

    const/4 v1, -0x1

    if-eq v6, v1, :cond_0

    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendChars(J[CII)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    throw v1

    :cond_0
    return-void
.end method

.method private pickEncoding(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "UTF-16"

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "UTF-8"

    :cond_1
    return-object v0
.end method

.method private native release(J)V
.end method

.method private static native releaseParser(J)V
.end method

.method private startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :cond_0
    return-void
.end method

.method private static native staticInitialize(Ljava/lang/String;)V
.end method


# virtual methods
.method append(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, p1, v1}, Lorg/apache/harmony/xml/ExpatParser;->appendString(JLjava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    throw v1
.end method

.method append([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/harmony/xml/ExpatParser;->append([BII)V

    return-void
.end method

.method append([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendBytes(J[BII)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    throw v1
.end method

.method append([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser;->appendChars(J[CII)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    throw v1
.end method

.method cloneAttributes()Lorg/xml/sax/Attributes;
    .locals 8

    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attributes can only be used within the scope of startElement()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->-get0()Lorg/xml/sax/Attributes;

    move-result-object v0

    return-object v0

    :cond_1
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    iget v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/xml/ExpatParser;->cloneAttributes(JI)J

    move-result-wide v4

    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;

    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    iget v6, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(JJILorg/apache/harmony/xml/ExpatParser$ClonedAttributes;)V

    return-object v1
.end method

.method comment([CI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_0
    return-void
.end method

.method endCdata()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_0
    return-void
.end method

.method endDtd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_0
    return-void
.end method

.method endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method endNamespace(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->release(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    const-string/jumbo v1, ""

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v1, v4}, Lorg/apache/harmony/xml/ExpatParser;->appendString(JLjava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$ParseException;)V

    throw v1
.end method

.method handleExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v12, v5, Lorg/apache/harmony/xml/ExpatReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    if-nez v12, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    if-eqz v5, :cond_1

    :try_start_0
    new-instance v14, Ljava/net/URI;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/URI;->isAbsolute()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v14}, Ljava/net/URI;->isOpaque()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v13

    if-nez v13, :cond_3

    return-void

    :cond_2
    :try_start_1
    new-instance v2, Ljava/net/URI;

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not resolve \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "\' relative to"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "\' at "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Ljava/lang/System;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v13}, Lorg/apache/harmony/xml/ExpatParser;->pickEncoding(Lorg/xml/sax/InputSource;)Ljava/lang/String;

    move-result-object v4

    iget-wide v8, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:J

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Lorg/apache/harmony/xml/ExpatParser;->createEntityParser(JLjava/lang/String;)J

    move-result-wide v6

    :try_start_2
    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$EntityParser;

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    invoke-virtual {v13}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/apache/harmony/xml/ExpatParser$EntityParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;JLjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser$EntityParser;)V

    invoke-direct {p0, v3, v13}, Lorg/apache/harmony/xml/ExpatParser;->parseExternalEntity(Lorg/apache/harmony/xml/ExpatParser;Lorg/xml/sax/InputSource;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6, v7}, Lorg/apache/harmony/xml/ExpatParser;->releaseParser(J)V

    return-void

    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Lorg/apache/harmony/xml/ExpatParser;->releaseParser(J)V

    throw v5
.end method

.method notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method parseDocument(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->startDocument()V

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser;->finish()V

    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->endDocument()V

    return-void
.end method

.method parseDocument(Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->startDocument()V

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/Reader;)V

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser;->finish()V

    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->endDocument()V

    return-void
.end method

.method processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method startCdata()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_0
    return-void
.end method

.method startDtd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    iput-wide p4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    iput p6, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    iput v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    iput-wide v4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    iput v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    iput-wide v4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:J

    throw v1
.end method

.method startNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method text([CI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_0
    return-void
.end method

.method unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
