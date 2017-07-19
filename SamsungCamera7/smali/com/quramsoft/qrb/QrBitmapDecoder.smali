.class public Lcom/quramsoft/qrb/QrBitmapDecoder;
.super Ljava/lang/Object;
.source "QrBitmapDecoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "Qjpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native QrnativeClean(J)V
.end method

.method public static QrnativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 24

    const/4 v10, 0x0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v19, v0

    div-int v14, p2, v19

    div-int v15, p3, v19

    div-int v16, p4, v19

    div-int v17, p5, v19

    if-lez v16, :cond_0

    if-gtz v17, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    move-object/from16 v0, p6

    iget-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_2

    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p6

    iget-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p6

    iget-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/16 v4, 0x10

    move/from16 v0, v19

    if-lt v0, v4, :cond_6

    const/16 v21, 0x8

    div-int/lit8 v22, v19, 0x8

    mul-int v8, v16, v22

    mul-int v9, v17, v22

    move-object/from16 v0, p6

    iget-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    mul-int v6, v14, v22

    mul-int v7, v15, v22

    const/16 v11, 0x8

    move-wide/from16 v4, p0

    invoke-static/range {v3 .. v11}, Lcom/quramsoft/qrb/QrBitmapDecoder;->QrnativeDoDecodeRegion(Landroid/graphics/Bitmap;JIIIIII)I

    new-instance v20, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_6
    move-object v11, v2

    move-wide/from16 v12, p0

    move/from16 v18, v10

    invoke-static/range {v11 .. v19}, Lcom/quramsoft/qrb/QrBitmapDecoder;->QrnativeDoDecodeRegion(Landroid/graphics/Bitmap;JIIIIII)I

    goto :goto_0
.end method

.method public static native QrnativeDoDecodeRegion(Landroid/graphics/Bitmap;JIIIIII)I
.end method

.method public static native QrnativeGetHeight(J)I
.end method

.method public static native QrnativeGetWidth(J)I
.end method

.method public static native QrnativeNewInstance(Ljava/lang/String;IZ)Lcom/quramsoft/qrb/QrBitmapRegionDecoder;
.end method

.method public static native QrnativeNewInstanceFromMemory([BIIZ)Lcom/quramsoft/qrb/QrBitmapRegionDecoder;
.end method
