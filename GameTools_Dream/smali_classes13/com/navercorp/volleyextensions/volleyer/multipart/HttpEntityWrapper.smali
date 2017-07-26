.class public Lcom/navercorp/volleyextensions/volleyer/multipart/HttpEntityWrapper;
.super Ljava/lang/Object;
.source "HttpEntityWrapper.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final UNKNOWN_LENGTH:I = -0x1


# instance fields
.field private writable:Lcom/navercorp/volleyextensions/volleyer/multipart/Writable;


# direct methods
.method public constructor <init>(Lcom/navercorp/volleyextensions/volleyer/multipart/Writable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Writable"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/HttpEntityWrapper;->writable:Lcom/navercorp/volleyextensions/volleyer/multipart/Writable;

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/multipart/HttpEntityWrapper;->writable:Lcom/navercorp/volleyextensions/volleyer/multipart/Writable;

    invoke-interface {v0, p1}, Lcom/navercorp/volleyextensions/volleyer/multipart/Writable;->write(Ljava/io/OutputStream;)V

    return-void
.end method
