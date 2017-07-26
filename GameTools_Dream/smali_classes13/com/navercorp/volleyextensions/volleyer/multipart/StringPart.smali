.class public Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;
.super Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;
.source "StringPart.java"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "utf-8"

.field private static final PLAIN_TEXT:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;


# instance fields
.field private final charset:Ljava/lang/String;

.field private final content:Ljava/lang/String;

.field private contentType:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->CONTENT_TYPE_TEXT_PLAIN:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;->PLAIN_TEXT:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "utf-8"

    invoke-direct {p0, p1, p2, v0}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "utf-8"

    sget-object v1, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;->PLAIN_TEXT:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "Content"

    invoke-static {p2, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string/jumbo p3, "utf-8"

    :cond_0
    iput-object p2, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;->content:Ljava/lang/String;

    iput-object p3, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;->charset:Ljava/lang/String;

    iput-object p4, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;->contentType:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    return-void
.end method

.method private getBytesFromContent()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;->charset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The character set, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;->charset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;->getBytesFromContent()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public getContentType()Lcom/navercorp/volleyextensions/volleyer/http/ContentType;
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/StringPart;->contentType:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    return-object v0
.end method

.method protected getExtraHeader()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
