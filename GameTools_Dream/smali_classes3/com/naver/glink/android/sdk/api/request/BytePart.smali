.class public Lcom/naver/glink/android/sdk/api/request/BytePart;
.super Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;
.source "BytePart.java"


# instance fields
.field private contentType:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

.field private count:I

.field private file:Ljava/io/File;

.field private filename:Ljava/lang/String;

.field private offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/navercorp/volleyextensions/volleyer/http/ContentType;Ljava/io/File;II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/naver/glink/android/sdk/api/request/BytePart;->createDefaultContentTypeIfNull(Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    move-result-object p2

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/request/BytePart;->filename:Ljava/lang/String;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/api/request/BytePart;->contentType:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/api/request/BytePart;->file:Ljava/io/File;

    iput p4, p0, Lcom/naver/glink/android/sdk/api/request/BytePart;->offset:I

    iput p5, p0, Lcom/naver/glink/android/sdk/api/request/BytePart;->count:I

    return-void
.end method

.method private createDefaultContentTypeIfNull(Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)Lcom/navercorp/volleyextensions/volleyer/http/ContentType;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, "application/octet-stream"

    invoke-static {v0}, Lcom/navercorp/volleyextensions/volleyer/http/ContentType;->createContentType(Ljava/lang/String;)Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 4

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/BytePart;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget v1, p0, Lcom/naver/glink/android/sdk/api/request/BytePart;->count:I

    new-array v1, v1, [B

    iget v2, p0, Lcom/naver/glink/android/sdk/api/request/BytePart;->offset:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    const/4 v2, 0x0

    iget v3, p0, Lcom/naver/glink/android/sdk/api/request/BytePart;->count:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getContentType()Lcom/navercorp/volleyextensions/volleyer/http/ContentType;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/BytePart;->contentType:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    return-object v0
.end method

.method protected getExtraHeader()[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/request/BytePart;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/BytePart;->filename:Ljava/lang/String;

    return-object v0
.end method
