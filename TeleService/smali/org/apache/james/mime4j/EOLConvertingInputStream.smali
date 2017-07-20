.class public Lorg/apache/james/mime4j/EOLConvertingInputStream;
.super Ljava/io/InputStream;
.source "EOLConvertingInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;
    }
.end annotation


# instance fields
.field private callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

.field private flags:I

.field private in:Ljava/io/PushbackInputStream;

.field private nextTenPctPos:I

.field private pos:I

.field private previous:I

.field private size:I

.field private tenPctSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    iput v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    iput v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->size:I

    iput v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    return-void
.end method

.method private readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->nextTenPctPos:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->nextTenPctPos:I

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->tenPctSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->nextTenPctPos:I

    iget-object v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;->report(I)V

    :cond_0
    return v0
.end method

.method private unreadByte(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    iget v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xd

    const/4 v4, -0x1

    const/16 v3, 0xa

    invoke-direct {p0}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->readByte()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->size:I

    iput v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    return v4

    :cond_0
    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    if-ne v0, v5, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->readByte()I

    move-result v1

    if-eq v1, v4, :cond_1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->unreadByte(I)V

    :cond_1
    if-eq v1, v3, :cond_2

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->unreadByte(I)V

    :cond_2
    :goto_0
    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    return v0

    :cond_3
    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    if-ne v0, v3, :cond_2

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    if-eq v2, v5, :cond_2

    const/16 v0, 0xd

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->unreadByte(I)V

    goto :goto_0
.end method
