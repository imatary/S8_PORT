.class public Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;
.super Ljava/lang/Object;
.source "DecodeUtil.java"


# static fields
.field public static DECODE_CROP:I

.field public static DECODE_NOCROP:I

.field public static FHD:I

.field public static HD:I

.field public static RESIZE_LESS_THAM_MAX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->DECODE_NOCROP:I

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->DECODE_CROP:I

    const/4 v0, 0x2

    sput v0, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->RESIZE_LESS_THAM_MAX:I

    const/16 v0, 0x500

    sput v0, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    const/16 v0, 0x280

    sput v0, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->HD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 38

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/16 v16, 0x0

    :cond_1
    :goto_0
    return-object v16

    :cond_2
    const/16 v16, 0x0

    new-instance v26, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    move-object/from16 v0, v26

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/16 v32, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v32

    if-nez v32, :cond_3

    const/16 v16, 0x0

    goto :goto_0

    :catch_0
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/16 v16, 0x0

    goto :goto_0

    :catch_1
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 v16, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-static {v0, v3, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :try_start_1
    invoke-virtual/range {v32 .. v32}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v26

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x64

    if-le v6, v3, :cond_4

    const/16 v3, 0x64

    if-gt v5, v3, :cond_5

    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    :catch_2
    move-exception v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    const/16 v16, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sub-int v3, v3, p4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sub-int v4, v4, p3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v3, v4, :cond_7

    const/16 v31, 0x1

    :goto_1
    mul-int v3, v5, v6

    int-to-float v3, v3

    mul-int v4, p3, p4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v0, v3

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_6

    const/16 v23, 0x1

    :cond_6
    move/from16 v0, v23

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    move-object/from16 v0, v26

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    move-object/from16 v0, v26

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :try_start_2
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v32

    if-nez v32, :cond_8

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_7
    const/16 v31, 0x0

    goto :goto_1

    :catch_3
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-static {v0, v3, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v28

    if-nez v28, :cond_9

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_9
    int-to-float v3, v5

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v30, v3, v4

    const/4 v2, 0x0

    if-eqz p2, :cond_a

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v30

    float-to-int v3, v3

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_a

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v30

    float-to-int v3, v3

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_a

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    div-float v3, v3, v30

    float-to-int v3, v3

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    div-float v4, v4, v30

    float-to-int v4, v4

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v14

    int-to-float v8, v8

    div-float v8, v8, v30

    float-to-int v8, v8

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    sub-int v14, v14, v34

    int-to-float v14, v14

    div-float v14, v14, v30

    float-to-int v14, v14

    move-object/from16 v0, v28

    invoke-static {v0, v3, v4, v8, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_b

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v2, v28

    goto :goto_2

    :cond_b
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v2, v17

    :cond_c
    :try_start_3
    invoke-virtual/range {v32 .. v32}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    if-nez v2, :cond_d

    const/16 v16, 0x0

    goto/16 :goto_0

    :catch_4
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lez v5, :cond_e

    if-gtz v6, :cond_f

    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_f
    const/16 v27, -0x1

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-static/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->getRotateDegree(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v27

    if-nez v27, :cond_11

    :goto_3
    if-eqz v27, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cheus, DecodeUtil : getBitmapFromUri : W/H : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->logD(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v2, v16

    :cond_10
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->RESIZE_LESS_THAM_MAX:I

    move/from16 v0, p5

    if-ne v0, v3, :cond_1d

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v3, v5

    int-to-float v4, v6

    div-float v15, v3, v4

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    if-ge v6, v3, :cond_15

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    if-ge v5, v3, :cond_15

    move-object/from16 v16, v2

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x5a

    move/from16 v0, v27

    if-ne v0, v3, :cond_12

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_3

    :cond_12
    const/16 v3, 0xb4

    move/from16 v0, v27

    if-ne v0, v3, :cond_13

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_3

    :cond_13
    const/16 v3, 0x10e

    move/from16 v0, v27

    if-ne v0, v3, :cond_14

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_3

    :cond_14
    const/16 v27, 0x0

    goto :goto_3

    :cond_15
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    if-le v6, v3, :cond_17

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    if-ge v5, v3, :cond_17

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    float-to-int v3, v3

    if-nez v3, :cond_16

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_16
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    float-to-int v3, v3

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    const/4 v8, 0x1

    invoke-static {v2, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_17
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    if-ge v6, v3, :cond_19

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    if-le v5, v3, :cond_19

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v3, v3

    div-float/2addr v3, v15

    float-to-int v3, v3

    if-nez v3, :cond_18

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_18
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v4, v4

    div-float/2addr v4, v15

    float-to-int v4, v4

    const/4 v8, 0x1

    invoke-static {v2, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_19
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v15, v3

    if-lez v3, :cond_1b

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v3, v3

    div-float/2addr v3, v15

    float-to-int v3, v3

    if-nez v3, :cond_1a

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_1a
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v4, v4

    div-float/2addr v4, v15

    float-to-int v4, v4

    const/4 v8, 0x1

    invoke-static {v2, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1b
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    float-to-int v3, v3

    if-nez v3, :cond_1c

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_1c
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    float-to-int v3, v3

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    const/4 v8, 0x1

    invoke-static {v2, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    div-float v33, v3, v4

    int-to-float v3, v5

    int-to-float v4, v6

    div-float v22, v3, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v12, v6

    move v11, v5

    cmpl-float v3, v33, v22

    if-lez v3, :cond_21

    mul-int v3, p4, v5

    int-to-float v3, v3

    move/from16 v0, p3

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-int v12, v3

    sub-int v3, v6, v12

    div-int/lit8 v10, v3, 0x2

    int-to-float v3, v5

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v29, v3, v4

    :goto_4
    if-eqz v11, :cond_1e

    if-nez v12, :cond_1f

    :cond_1e
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_1f
    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v34, v36

    if-lez v3, :cond_22

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v3, v29

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v4, v4, v29

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v14, 0x0

    move-object v8, v2

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    :cond_20
    :goto_5
    if-eqz v28, :cond_1

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v28, 0x0

    goto/16 :goto_0

    :cond_21
    int-to-float v3, v6

    mul-float v3, v3, v33

    float-to-int v11, v3

    sub-int v3, v5, v11

    div-int/lit8 v9, v3, 0x2

    int-to-float v3, v6

    move/from16 v0, p4

    int-to-float v4, v0

    div-float v29, v3, v4

    goto :goto_4

    :cond_22
    invoke-static {v2, v9, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    goto :goto_5
.end method

.method public static getBitmapFromUri(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 26

    const/4 v10, 0x0

    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x64

    if-le v6, v3, :cond_0

    const/16 v3, 0x64

    if-gt v5, v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    mul-int v3, v5, v6

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/Interface/MemoryStatus;->checkMemoryIsEnough(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    mul-int v3, v5, v6

    int-to-float v3, v3

    mul-int v4, p1, p2

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v0, v3

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    const-wide/16 v24, 0x0

    cmpl-double v3, v18, v24

    if-nez v3, :cond_4

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    :cond_4
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v13, v0

    const/4 v3, 0x0

    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v13, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {v12, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v11

    :cond_7
    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lez v5, :cond_9

    if-gtz v6, :cond_a

    :cond_9
    const/4 v2, 0x0

    goto :goto_0

    :cond_a
    const/16 v17, -0x1

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->getRotateDegree(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_d

    :goto_1
    if-eqz v17, :cond_b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v10

    :cond_b
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->RESIZE_LESS_THAM_MAX:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_18

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v3, v5

    int-to-float v4, v6

    div-float v9, v3, v4

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    if-ge v6, v3, :cond_c

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    if-lt v5, v3, :cond_1

    :cond_c
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    if-le v6, v3, :cond_12

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    if-ge v5, v3, :cond_12

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    if-nez v3, :cond_11

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x5a

    move/from16 v0, v17

    if-ne v0, v3, :cond_e

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    :cond_e
    const/16 v3, 0xb4

    move/from16 v0, v17

    if-ne v0, v3, :cond_f

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    :cond_f
    const/16 v3, 0x10e

    move/from16 v0, v17

    if-ne v0, v3, :cond_10

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    :cond_10
    const/16 v17, 0x0

    goto :goto_1

    :cond_11
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    const/4 v8, 0x1

    invoke-static {v2, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    move-object v2, v10

    goto/16 :goto_0

    :cond_12
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    if-ge v6, v3, :cond_14

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    if-le v5, v3, :cond_14

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    float-to-int v3, v3

    if-nez v3, :cond_13

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_13
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    float-to-int v4, v4

    const/4 v8, 0x1

    invoke-static {v2, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    move-object v2, v10

    goto/16 :goto_0

    :cond_14
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v9, v3

    if-lez v3, :cond_16

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    float-to-int v3, v3

    if-nez v3, :cond_15

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_15
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    float-to-int v4, v4

    const/4 v8, 0x1

    invoke-static {v2, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    move-object v2, v10

    goto/16 :goto_0

    :cond_16
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    if-nez v3, :cond_17

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_17
    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    sget v4, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->FHD:I

    const/4 v8, 0x1

    invoke-static {v2, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    move-object v2, v10

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move/from16 v0, p1

    if-eq v5, v0, :cond_1

    move/from16 v0, p2

    if-eq v6, v0, :cond_1

    move/from16 v0, p1

    int-to-float v3, v0

    int-to-float v4, v5

    div-float v22, v3, v4

    move/from16 v0, p2

    int-to-float v3, v0

    int-to-float v4, v6

    div-float v21, v3, v4

    move/from16 v0, p1

    if-lt v5, v0, :cond_19

    move/from16 v0, p2

    if-ge v6, v0, :cond_1a

    :cond_19
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    :goto_2
    int-to-float v3, v5

    mul-float v3, v3, v20

    float-to-int v0, v3

    move/from16 v16, v0

    int-to-float v3, v6

    mul-float v3, v3, v20

    float-to-int v15, v3

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v0, v15, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    move-object v2, v10

    goto/16 :goto_0

    :cond_1a
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v20

    goto :goto_2
.end method

.method public static getPath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, p1, v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    const-string v5, "_data"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v4

    goto :goto_0

    :cond_2
    move-object v3, v4

    goto :goto_0
.end method

.method public static getRotateDegree(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 9

    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->getPath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_0

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v6, "Orientation"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_3

    const/16 v5, 0x5a

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-static {v8, v6}, Ljunit/framework/Assert;->assertEquals(ZZ)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    const/16 v5, 0xb4

    goto :goto_0

    :cond_4
    const/16 v5, 0x8

    if-ne v2, v5, :cond_5

    const/16 v5, 0x10e

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRotateDegree(Ljava/lang/String;)I
    .locals 6

    const/4 v3, -0x1

    const/4 v2, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    const/16 v3, 0x5a

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const/16 v3, 0xb4

    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/16 v3, 0x10e

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isLowResolutionImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 11

    const/16 v10, 0x64

    const/4 v8, 0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    const/4 v0, 0x0

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v9, 0x0

    invoke-static {v7, v9, v6}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v10, :cond_0

    if-le v5, v10, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
