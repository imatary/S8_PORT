.class public Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;
.super Ljava/lang/Object;
.source "CrossBytesBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesBuffer"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public offset:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->data:[B

    return-void
.end method

.method synthetic constructor <init>(ILcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public readFrom(Ljava/io/FileDescriptor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput v5, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->length:I

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->data:[B

    array-length v0, v5

    :cond_0
    :goto_0
    const/16 v5, 0x1000

    iget v6, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->length:I

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->data:[B

    iget v6, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->length:I

    invoke-virtual {v1, v5, v6, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-gez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-void

    :cond_1
    :try_start_1
    iget v5, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->length:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->length:I

    iget v5, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->length:I

    if-ne v5, v0, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->data:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    new-array v2, v5, [B

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->data:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->data:[B

    array-length v8, v8

    invoke-static {v5, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->data:[B

    iget-object v5, p0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->data:[B

    array-length v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v5
.end method
