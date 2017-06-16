.class Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;
.super Ljava/io/InputStream;
.source "ByteSourceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheReadingInputStream"
.end annotation


# instance fields
.field private block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

.field private blockIndex:I

.field private readFirst:Z

.field final synthetic this$0:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;


# direct methods
.method private constructor <init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->this$0:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->this$0:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    # invokes: Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->getFirstBlock()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;
    invoke-static {v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->access$100(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v2, v2, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->getNext()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    :cond_3
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v2, v2, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v0, v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    iget v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    if-ltz p2, :cond_1

    array-length v2, p1

    if-gt p2, v2, :cond_1

    if-ltz p3, :cond_1

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_1

    add-int v2, p2, p3

    if-gez v2, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_2
    if-nez p3, :cond_3

    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->this$0:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    # invokes: Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->getFirstBlock()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;
    invoke-static {v2}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->access$100(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    :cond_5
    iget-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v3, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v3, v3, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_6

    iget-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->getNext()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iput v0, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    :cond_6
    iget-object v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v3, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v3, v3, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    iget v2, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    goto :goto_0
.end method

.method public skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-wide v2, p1

    cmp-long v1, p1, v4

    if-gtz v1, :cond_1

    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v6, 0x400

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v1, v6

    iget-object v6, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v6, v6

    iget v7, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    sub-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    int-to-long v6, v0

    sub-long/2addr v2, v6

    :cond_1
    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    if-eqz v1, :cond_2

    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->this$0:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    # invokes: Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->getFirstBlock()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;
    invoke-static {v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;->access$100(Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;)Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->readFirst:Z

    :cond_3
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v6, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v6, v6

    if-lt v1, v6, :cond_4

    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->getNext()Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    :cond_4
    iget-object v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    if-nez v1, :cond_6

    :cond_5
    :goto_1
    sub-long v4, p1, v2

    goto :goto_0

    :cond_6
    iget v1, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->blockIndex:I

    iget-object v6, p0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheReadingInputStream;->block:Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream$CacheBlock;->bytes:[B

    array-length v6, v6

    if-lt v1, v6, :cond_0

    goto :goto_1
.end method
