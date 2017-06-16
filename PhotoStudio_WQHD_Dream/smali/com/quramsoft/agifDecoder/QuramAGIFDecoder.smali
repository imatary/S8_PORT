.class public Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;
.super Ljava/lang/Object;
.source "QuramAGIFDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuramAGIFEncoder"


# instance fields
.field protected mHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->loadLib()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v8, "QuramAGIFEncoder"

    const-string v9, "inputstream is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    :goto_1
    if-gtz v5, :cond_1

    const-string v8, "QuramAGIFEncoder"

    const-string v9, "inpustream open fail"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v7

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    new-array v1, v5, [B

    :try_start_2
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    array-length v8, v1

    invoke-virtual {p0, p0, v1, v8}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeInitByteArrayHandle(Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;[BI)V

    goto :goto_2

    :catch_2
    move-exception v6

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 23

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "r"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    :goto_0
    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v13

    :goto_1
    if-nez v12, :cond_0

    const-string v19, "QuramAGIFEncoder"

    const-string v20, "inputstream is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/32 v20, 0x3b9aca00

    mul-long v8, p3, v20

    const/high16 v19, 0x10000

    move/from16 v0, v19

    new-array v4, v0, [B

    const/4 v5, 0x0

    :cond_1
    :try_start_3
    invoke-virtual {v12, v4}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v14, v0, :cond_2

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v4, v0, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    cmp-long v19, v20, v8

    if-lez v19, :cond_1

    :cond_2
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_3

    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    if-nez v5, :cond_5

    const-string v19, "QuramAGIFEncoder"

    const-string v20, "buffer is Null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v15

    :try_start_5
    const-string v19, "QuramAGIFEncoder"

    const-string v20, "IOException happens"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v12, :cond_3

    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v19

    if-eqz v12, :cond_4

    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_4
    throw v19

    :catch_5
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_5
    const-string v19, "QuramAGIFEncoder"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "buffer size is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v5

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-virtual {v0, v1, v5, v2}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeInitByteArrayHandle(Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;[BI)V

    goto/16 :goto_2
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v6, "QuramAGIFEncoder"

    const-string v7, "inputstream is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    if-gtz v3, :cond_1

    const-string v6, "QuramAGIFEncoder"

    const-string v7, "inpustream open fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v5

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    new-array v1, v3, [B

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    array-length v6, v1

    invoke-virtual {p0, p0, v1, v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeInitByteArrayHandle(Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;[BI)V

    goto :goto_0

    :catch_1
    move-exception v4

    const/4 v1, 0x0

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    if-eqz p1, :cond_0

    invoke-virtual {p0, p0, p1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeInitHandle(Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static loadLib()V
    .locals 4

    :try_start_0
    const-string v1, "quramagifencoderPE"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QuramAGIFEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load library fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    move-result v1

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

    move-result v1

    return v1
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

    move-result v1

    return v1
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
