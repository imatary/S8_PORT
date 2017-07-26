.class public abstract Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;
.super Ljava/lang/Object;
.source "AbstractPart.java"

# interfaces
.implements Lcom/navercorp/volleyextensions/volleyer/multipart/Part;


# static fields
.field private static final CONTENT_DISPOSITION:[B

.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "Content-Disposition: form-data;"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->CONTENT_DISPOSITION:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Part name"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->name:Ljava/lang/String;

    return-void
.end method

.method private writeCRLF(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeContentDisposition(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->CONTENT_DISPOSITION:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeContentTypeIfNotNull(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->getContentType()Lcom/navercorp/volleyextensions/volleyer/http/ContentType;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->writeCRLF(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private writeLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeName(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method protected abstract getExtraHeader()[B
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->name:Ljava/lang/String;

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->writeContentDisposition(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->writeName(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->writeExtraHeaderIfNotNull(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->writeCRLF(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->writeContentTypeIfNotNull(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->writeCRLF(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->writeContent(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->writeCRLF(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected final writeContent(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x400

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v1}, Lcom/navercorp/volleyextensions/volleyer/util/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :cond_0
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    if-ge v2, v4, :cond_1

    move v3, v2

    :goto_2
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v1}, Lcom/navercorp/volleyextensions/volleyer/util/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lcom/navercorp/volleyextensions/volleyer/util/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method protected final writeExtraHeaderIfNotNull(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/navercorp/volleyextensions/volleyer/multipart/AbstractPart;->getExtraHeader()[B

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method
