.class public Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;
.super Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;
.source "FilePart.java"


# instance fields
.field private contentType:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

.field private final file:Ljava/io/File;

.field private filename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;->file:Ljava/io/File;

    invoke-direct {p0, p3}, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;->createDefaultContentTypeIfNull(Lcom/navercorp/volleyextensions/volleyer/http/ContentType;)Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    move-result-object p3

    iput-object p3, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;->contentType:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;->filename:Ljava/lang/String;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The file of parts doesn\'t exist. [PATH : ] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getContentType()Lcom/navercorp/volleyextensions/volleyer/http/ContentType;
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;->contentType:Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    return-object v0
.end method

.method protected getExtraHeader()[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;->filename:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/FilePart;->filename:Ljava/lang/String;

    return-object v0
.end method
