.class public Lcom/quramsoft/images/QuramDngRegionDecoder;
.super Ljava/lang/Object;
.source "QuramDngRegionDecoder.java"


# instance fields
.field handle:J

.field height:I

.field mBuffer:[B

.field mLength:J

.field options:Lcom/quramsoft/images/QrBitmapFactory$Options;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->handle:J

    iput v0, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->width:I

    iput v0, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->height:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->mBuffer:[B

    iput-wide v2, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->mLength:J

    return-void
.end method

.method public constructor <init>(JII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->handle:J

    iput p3, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->width:I

    iput p4, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->height:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->mBuffer:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->mLength:J

    return-void
.end method

.method public constructor <init>(Lcom/quramsoft/images/QrBitmapFactory$Options;[BJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->handle:J

    iput-wide v0, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->handle:J

    iget v0, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    iput v0, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->width:I

    iget v0, p1, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    iput v0, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->height:I

    iput-object p1, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->options:Lcom/quramsoft/images/QrBitmapFactory$Options;

    iput-object p2, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->mBuffer:[B

    iput-wide p3, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->mLength:J

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/quramsoft/images/QuramDngRegionDecoder;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    long-to-int v9, v4

    new-array v1, v9, [B

    long-to-int v9, v4

    invoke-virtual {v6, v1, v10, v9}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    new-instance v7, Lcom/quramsoft/images/QrBitmapFactory$Options;

    invoke-direct {v7, v10}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/quramsoft/images/QrBitmapFactory$Options;->bRegionDecoder:Z

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/16 v9, 0x100

    new-array v0, v9, [D

    iget-object v3, v7, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    long-to-int v9, v4

    invoke-static {v1, v9, v0, v3, v7}, Lcom/quramsoft/images/QuramDngBitmap;->parseDNGImageBufferJNI([BI[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-result v9

    if-gez v9, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    invoke-static {v0, v7}, Lcom/quramsoft/images/QuramDngBitmap;->SetFileBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    new-instance v8, Lcom/quramsoft/images/QuramDngRegionDecoder;

    invoke-direct {v8, v7, v1, v4, v5}, Lcom/quramsoft/images/QuramDngRegionDecoder;-><init>(Lcom/quramsoft/images/QrBitmapFactory$Options;[BJ)V

    goto :goto_0
.end method


# virtual methods
.method public cancelDecoding()V
    .locals 4

    :try_start_0
    new-instance v1, Lcom/quramsoft/images/QrBitmapFactory$Options;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    iget-wide v2, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->handle:J

    iput-wide v2, v1, Lcom/quramsoft/images/QrBitmapFactory$Options;->handle:J

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/quramsoft/images/QrBitmapFactory$Options;->bRegionDecoder:Z

    invoke-static {v1}, Lcom/quramsoft/images/QuramDngBitmap;->cancelDecoding(Lcom/quramsoft/images/QrBitmapFactory$Options;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public decodeRegion(Landroid/graphics/Rect;Lcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 16

    const/4 v3, 0x0

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/quramsoft/images/QuramDngRegionDecoder;->handle:J

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/quramsoft/images/QrBitmapFactory$Options;

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-direct {v0, v2}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->bRegionDecoder:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v2, 0x100

    new-array v5, v2, [D

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->FileWhiteLevel:[D

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iput v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iput v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iput v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    if-nez v2, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    if-nez v2, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    if-nez v2, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    if-eqz v2, :cond_6

    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    if-ge v2, v4, :cond_3

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    if-lt v2, v4, :cond_4

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginX:I

    if-nez v2, :cond_5

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginY:I

    if-eqz v2, :cond_6

    :cond_5
    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginY:I

    add-int/2addr v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_t:I

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginY:I

    add-int/2addr v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_b:I

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginX:I

    add-int/2addr v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_l:I

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->mCropOriginX:I

    add-int/2addr v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->rd_r:I

    :cond_6
    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    invoke-static {v2, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v2, :cond_7

    move-object v2, v3

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->UserWhiteLevel:[D

    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/quramsoft/images/QuramDngBitmap;->SetUserBlackLevel([DLcom/quramsoft/images/QrBitmapFactory$Options;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/quramsoft/images/QuramDngRegionDecoder;->handle:J

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->handle:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/quramsoft/images/QuramDngRegionDecoder;->mBuffer:[B

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/quramsoft/images/QuramDngRegionDecoder;->mLength:J

    long-to-int v4, v12

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v7}, Lcom/quramsoft/images/QuramDngBitmap;->DecodeDNGImageBufferJNI([BLandroid/graphics/Bitmap;I[D[DLcom/quramsoft/images/QrBitmapFactory$Options;)I

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->width:I

    int-to-float v10, v2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->height:I

    int-to-float v9, v2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-nez v2, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-eq v2, v4, :cond_9

    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v2, v2

    div-float v2, v10, v2

    float-to-int v2, v2

    move-object/from16 v0, p2

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    int-to-float v4, v4

    div-float v4, v9, v4

    float-to-int v4, v4

    const/4 v7, 0x1

    invoke-static {v3, v2, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_9
    move-object v2, v3

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p2

    iget v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-gez v2, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/quramsoft/images/QuramDngRegionDecoder;->recycle()V

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->width:I

    return v0
.end method

.method final isRecycled()Z
    .locals 4

    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v2, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->handle:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    new-instance v0, Lcom/quramsoft/images/QrBitmapFactory$Options;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/quramsoft/images/QrBitmapFactory$Options;-><init>(I)V

    iget-wide v2, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->handle:J

    iput-wide v2, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->handle:J

    invoke-static {v0}, Lcom/quramsoft/images/QuramDngBitmap;->finalizeRegionDecoderHandle(Lcom/quramsoft/images/QrBitmapFactory$Options;)I

    iput-wide v4, p0, Lcom/quramsoft/images/QuramDngRegionDecoder;->handle:J

    :cond_0
    return-void
.end method
