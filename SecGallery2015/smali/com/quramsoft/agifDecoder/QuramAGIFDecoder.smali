.class public Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;
.super Ljava/lang/Object;
.source "QuramAGIFDecoder.java"


# instance fields
.field protected mHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->loadLib()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "r"

    invoke-virtual {v10, p2, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_0
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    :goto_1
    if-nez v5, :cond_0

    const-string/jumbo v10, "PEDIT_QuramAGIFEncoder"

    const-string/jumbo v11, "inputstream is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    const/high16 v10, 0x10000

    new-array v0, v10, [B

    const/4 v1, 0x0

    :goto_3
    :try_start_3
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_1

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    if-nez v1, :cond_2

    const-string/jumbo v10, "PEDIT_QuramAGIFEncoder"

    const-string/jumbo v11, "buffer is Null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :try_start_4
    invoke-virtual {v3, v0, v10, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v8

    const-string/jumbo v10, "PEDIT_QuramAGIFEncoder"

    const-string/jumbo v11, "IOException happens"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_2
    const-string/jumbo v10, "PEDIT_QuramAGIFEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "buffer size is "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v10, v1

    invoke-virtual {p0, p0, v1, v10}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeInitByteArrayHandle(Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;[BI)V

    goto :goto_2
.end method

.method public static loadLib()V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "quramagifencoder"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PEDIT_QuramAGIFEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Load library fail : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public decodeFrame(Landroid/graphics/Bitmap;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-wide v2, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    invoke-virtual {p0, v2, v3, p1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeDecodeFrame(JLandroid/graphics/Bitmap;)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public finish()Z
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeFinish(J)Z

    move-result v0

    return v0
.end method

.method public getDelay()I
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeGetDelay(J)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 4

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    invoke-virtual {p0, v2, v3}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeGetHeight(J)I

    move-result v0

    return v0
.end method

.method public getNumOfFrame()I
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeGetNumOfFrame(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 4

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    invoke-virtual {p0, v2, v3}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeGetWidth(J)I

    move-result v0

    return v0
.end method

.method protected native nativeDecodeFrame(JLandroid/graphics/Bitmap;)I
.end method

.method protected native nativeFinish(J)Z
.end method

.method protected native nativeGetDelay(J)I
.end method

.method protected native nativeGetHeight(J)I
.end method

.method protected native nativeGetNumOfFrame(J)I
.end method

.method protected native nativeGetWidth(J)I
.end method

.method protected native nativeInitByteArrayHandle(Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;[BI)V
.end method

.method protected native nativeInitHandle(Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;Ljava/lang/String;)V
.end method
