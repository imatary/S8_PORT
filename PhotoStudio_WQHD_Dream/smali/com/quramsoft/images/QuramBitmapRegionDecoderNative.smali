.class public Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;
.super Ljava/lang/Object;
.source "QuramBitmapRegionDecoderNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuramBitmapRegionDecoderNative"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v1, "QuramCodecPE"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QuramBitmapRegionDecoderNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Library load fail : "

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

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeClean(J)V
.end method

.method public static nativeDecodeRegion(JIIIILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v10, 0x0

    move-object/from16 v0, p6

    iget v12, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-eqz v4, :cond_0

    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-gtz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    const/16 v5, 0x8

    if-le v4, v5, :cond_3

    const/16 v4, 0x8

    move-object/from16 v0, p6

    iput v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    :cond_3
    if-gez p2, :cond_4

    const/16 p2, 0x0

    :cond_4
    if-gez p3, :cond_5

    const/16 p3, 0x0

    :cond_5
    add-int v4, p2, p4

    move-object/from16 v0, p6

    iget v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    if-le v4, v5, :cond_6

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    sub-int p4, v4, p2

    :cond_6
    add-int v4, p3, p5

    move-object/from16 v0, p6

    iget v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    if-le v4, v5, :cond_7

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    sub-int p5, v4, p3

    :cond_7
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v6, p2, v4

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v7, p3, v4

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v8, p4, v4

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v9, p5, v4

    if-lez v8, :cond_8

    if-gtz v9, :cond_9

    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_b

    const/4 v10, 0x0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p6

    iget v11, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    move-wide v4, p0

    invoke-static/range {v3 .. v11}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeDoDecodeRegion(Landroid/graphics/Bitmap;JIIIIII)I

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-ge v4, v12, :cond_1

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v4, v8

    div-int/2addr v4, v12

    if-lez v4, :cond_a

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v4, v9

    div-int/2addr v4, v12

    if-gtz v4, :cond_d

    :cond_a
    const/4 v3, 0x0

    goto :goto_0

    :cond_b
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    if-nez v4, :cond_c

    const/4 v10, 0x1

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_c
    const/4 v4, 0x7

    move-object/from16 v0, p6

    iput v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v10, 0x0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_d
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v4, v8

    div-int/2addr v4, v12

    move-object/from16 v0, p6

    iget v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v5, v9

    div-int/2addr v5, v12

    const/4 v11, 0x0

    invoke-static {v3, v4, v5, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v3, v2

    move-object/from16 v0, p6

    iput v12, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_0
.end method

.method public static nativeDecodeRegionEx(JIIIILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v10, 0x0

    move-object/from16 v0, p6

    iget v12, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-eqz v4, :cond_0

    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-gtz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    const/16 v5, 0x8

    if-le v4, v5, :cond_3

    const/16 v4, 0x8

    move-object/from16 v0, p6

    iput v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    :cond_3
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v6, p2, v4

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v7, p3, v4

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v8, p4, v4

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v9, p5, v4

    if-lez v8, :cond_4

    if-gtz v9, :cond_5

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_7

    const/4 v10, 0x0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p6

    iget v11, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    move-wide v4, p0

    invoke-static/range {v3 .. v11}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeDoDecodeRegionEx(Landroid/graphics/Bitmap;JIIIIII)I

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-ge v4, v12, :cond_1

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v4, v8

    div-int/2addr v4, v12

    if-lez v4, :cond_6

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v4, v9

    div-int/2addr v4, v12

    if-gtz v4, :cond_9

    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    if-nez v4, :cond_8

    const/4 v10, 0x1

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_8
    const/4 v4, 0x7

    move-object/from16 v0, p6

    iput v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v10, 0x0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_9
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v4, v8

    div-int/2addr v4, v12

    move-object/from16 v0, p6

    iget v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v5, v9

    div-int/2addr v5, v12

    const/4 v11, 0x0

    invoke-static {v3, v4, v5, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v3, v2

    move-object/from16 v0, p6

    iput v12, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_0
.end method

.method public static nativeDecodeRegionPNG(JIIIILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 18

    const/4 v10, 0x0

    move-object/from16 v0, p6

    iget v13, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-eqz v4, :cond_0

    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-gtz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    const/16 v5, 0x8

    if-le v4, v5, :cond_3

    const/16 v4, 0x8

    move-object/from16 v0, p6

    iput v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    :cond_3
    if-gez p2, :cond_4

    const/16 p2, 0x0

    :cond_4
    if-gez p3, :cond_5

    const/16 p3, 0x0

    :cond_5
    add-int v4, p2, p4

    move-object/from16 v0, p6

    iget v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    if-le v4, v5, :cond_6

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->outWidth:I

    sub-int p4, v4, p2

    :cond_6
    add-int v4, p3, p5

    move-object/from16 v0, p6

    iget v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    if-le v4, v5, :cond_7

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->outHeight:I

    sub-int p5, v4, p3

    :cond_7
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v15, p2, v4

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v16, p3, v4

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v14, p4, v4

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v12, p5, v4

    if-lez v14, :cond_8

    if-gtz v12, :cond_9

    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_b

    const/4 v10, 0x0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p6

    iget v11, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    move-wide/from16 v4, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v3 .. v11}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeDoDecodeRegionPNG(Landroid/graphics/Bitmap;JIIIIII)I

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-ge v4, v13, :cond_1

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v4, v14

    div-int/2addr v4, v13

    if-lez v4, :cond_a

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v4, v12

    div-int/2addr v4, v13

    if-gtz v4, :cond_d

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    if-nez v4, :cond_c

    const/4 v10, 0x1

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_c
    const/4 v4, 0x7

    move-object/from16 v0, p6

    iput v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v10, 0x0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_d
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v4, v14

    div-int/2addr v4, v13

    move-object/from16 v0, p6

    iget v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v5, v12

    div-int/2addr v5, v13

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v3, v2

    move-object/from16 v0, p6

    iput v13, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_0
.end method

.method public static nativeDecodeRegionPNGEx(JIIIILcom/quramsoft/images/QrBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 18

    const/4 v10, 0x0

    move-object/from16 v0, p6

    iget v13, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-eqz v4, :cond_0

    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-gtz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    const/16 v5, 0x8

    if-le v4, v5, :cond_3

    const/16 v4, 0x8

    move-object/from16 v0, p6

    iput v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    :cond_3
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v15, p2, v4

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v16, p3, v4

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v14, p4, v4

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    div-int v12, p5, v4

    if-lez v14, :cond_4

    if-gtz v12, :cond_5

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_7

    const/4 v10, 0x0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p6

    iget v11, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    move-wide/from16 v4, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v3 .. v11}, Lcom/quramsoft/images/QuramBitmapRegionDecoderNative;->nativeDoDecodeRegionPNGEx(Landroid/graphics/Bitmap;JIIIIII)I

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    if-ge v4, v13, :cond_1

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v4, v14

    div-int/2addr v4, v13

    if-lez v4, :cond_6

    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v4, v12

    div-int/2addr v4, v13

    if-gtz v4, :cond_9

    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    if-nez v4, :cond_8

    const/4 v10, 0x1

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_8
    const/4 v4, 0x7

    move-object/from16 v0, p6

    iput v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inPreferredConfig:I

    const/4 v10, 0x0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_9
    move-object/from16 v0, p6

    iget v4, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v4, v14

    div-int/2addr v4, v13

    move-object/from16 v0, p6

    iget v5, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v5, v12

    div-int/2addr v5, v13

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v3, v2

    move-object/from16 v0, p6

    iput v13, v0, Lcom/quramsoft/images/QrBitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_0
.end method

.method public static native nativeDoDecodeRegion(Landroid/graphics/Bitmap;JIIIIII)I
.end method

.method public static native nativeDoDecodeRegionEx(Landroid/graphics/Bitmap;JIIIIII)I
.end method

.method public static native nativeDoDecodeRegionPNG(Landroid/graphics/Bitmap;JIIIIII)I
.end method

.method public static native nativeDoDecodeRegionPNGEx(Landroid/graphics/Bitmap;JIIIIII)I
.end method

.method public static native nativeGetHeight(J)I
.end method

.method public static native nativeGetPNGHeight(J)I
.end method

.method public static native nativeGetPNGWidth(J)I
.end method

.method public static native nativeGetWidth(J)I
.end method

.method public static native nativeNewInstance(Ljava/lang/String;ZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;
.end method

.method public static native nativeNewInstanceBuffer([BIIZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;
.end method

.method public static native nativeNewInstanceWithDec(Ljava/lang/String;Landroid/graphics/Bitmap;IZLcom/quramsoft/images/QrBitmapFactory$Options;)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;
.end method

.method public static native nativeNewInstanceWithOpt(Lcom/quramsoft/images/QrBitmapFactory$Options;J)Lcom/quramsoft/images/QuramBitmapRegionDecoderInternal;
.end method

.method public static native nativePNGClean(J)V
.end method
