.class public Lcom/samsung/app/highlightplayer/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;
    }
.end annotation


# static fields
.field public static final CMH_FILES_TABLE_URI:Landroid/net/Uri;

.field public static final CMH_SUMMARY_URI:Landroid/net/Uri;

.field public static THUMBNAIL_IMAGE_HEIGHT1:I

.field public static THUMBNAIL_IMAGE_SIZE:I

.field public static isCloudFile:Z

.field public static isValidCloudFile:Z

.field public static posFaceRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public static posRatioMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "content://com.samsung.cmh/files"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/highlightplayer/util/Utils;->CMH_FILES_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.cmh/summary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/highlightplayer/util/Utils;->CMH_SUMMARY_URI:Landroid/net/Uri;

    sget v0, Lcom/samsung/app/highlightplayer/R$dimen;->trim_bar_view_group_height:I

    invoke-static {v0}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v0

    sput v0, Lcom/samsung/app/highlightplayer/util/Utils;->THUMBNAIL_IMAGE_HEIGHT1:I

    sget v0, Lcom/samsung/app/highlightplayer/R$dimen;->trim_bar_view_group_height:I

    invoke-static {v0}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v0

    sput v0, Lcom/samsung/app/highlightplayer/util/Utils;->THUMBNAIL_IMAGE_SIZE:I

    sput-boolean v1, Lcom/samsung/app/highlightplayer/util/Utils;->isValidCloudFile:Z

    sput-boolean v1, Lcom/samsung/app/highlightplayer/util/Utils;->isCloudFile:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/app/highlightplayer/util/Utils;->posRatioMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/app/highlightplayer/util/Utils;->posFaceRectMap:Ljava/util/HashMap;

    return-void
.end method

.method public static addMultiLayerPanEffect(Ljava/lang/String;Landroid/graphics/RectF;[Landroid/graphics/RectF;[Landroid/graphics/RectF;Landroid/graphics/RectF;I[FI)V
    .locals 30

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v12, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v11, v0

    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/RectF;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v12, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_0
    :try_start_0
    new-instance v8, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v25, "Orientation"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v9

    const/16 v25, 0x6

    move/from16 v0, v25

    if-ne v9, v0, :cond_1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v12, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v11, v0

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v25, 0x42b40000    # 90.0f

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->height()F

    move-result v25

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p4

    move-object/from16 v1, p4

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    :cond_1
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ne v9, v0, :cond_2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v12, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v11, v0

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v25, -0x3d4c0000    # -90.0f

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/16 v25, 0x0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->width()F

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p4

    move-object/from16 v1, p4

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    new-instance v10, Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v21, Landroid/graphics/RectF;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/16 v24, 0x0

    :goto_1
    move-object/from16 v0, p6

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    if-nez p7, :cond_9

    div-float v25, v12, v11

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpl-double v25, v26, v28

    if-lez v25, :cond_7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v5, v25, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v14, v25, v26

    mul-float v25, v12, v5

    move/from16 v0, v25

    float-to-int v13, v0

    div-int v25, v13, p5

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    aget v26, p6, v24

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v25, v14

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v25, v18, v20

    div-int/lit8 v22, v25, 0x2

    div-int/lit8 v25, v17, 0x2

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    div-int/lit8 v25, v17, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v26, v0

    aget v27, p6, v24

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    :goto_2
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v10, Landroid/graphics/RectF;->right:F

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    div-int/lit8 v25, v17, 0x2

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    div-int/lit8 v23, v17, 0x2

    :goto_3
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->right:F

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    rem-int/lit8 v25, v24, 0x2

    if-nez v25, :cond_6

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p2, v24

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p3, v24

    :cond_3
    :goto_4
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    const/16 v23, 0x0

    goto :goto_2

    :cond_5
    sub-int v23, v17, v19

    goto :goto_3

    :cond_6
    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p2, v24

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p3, v24

    goto :goto_4

    :cond_7
    div-float v25, v12, v11

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v25, v26, v28

    if-gtz v25, :cond_3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v14, v25, v26

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v14

    aget v26, p6, v24

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v25, v14

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v25, v18, v20

    div-int/lit8 v22, v25, 0x2

    const/16 v23, 0x0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v10, Landroid/graphics/RectF;->right:F

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    sub-int v23, v17, v19

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->right:F

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    rem-int/lit8 v25, v24, 0x2

    if-nez v25, :cond_8

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p2, v24

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p3, v24

    goto/16 :goto_4

    :cond_8
    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p2, v24

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p3, v24

    goto/16 :goto_4

    :cond_9
    const/16 v25, 0x1

    move/from16 v0, p7

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    div-float v25, v12, v11

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3ffc7ae147ae147bL    # 1.78

    cmpg-double v25, v26, v28

    if-gtz v25, :cond_b

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v5, v25, v11

    mul-float v25, v12, v5

    move/from16 v0, v25

    float-to-int v4, v0

    int-to-float v0, v4

    move/from16 v25, v0

    aget v26, p6, v24

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    div-float v14, v25, v26

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v25, v14

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v25, v17, v19

    div-int/lit8 v23, v25, 0x2

    sub-int v25, v18, v4

    div-int/lit8 v6, v25, 0x2

    move/from16 v22, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v10, Landroid/graphics/RectF;->right:F

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    add-int v25, v20, v6

    sub-int v22, v18, v25

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->right:F

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    rem-int/lit8 v25, v24, 0x2

    if-nez v25, :cond_a

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p2, v24

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p3, v24

    goto/16 :goto_4

    :cond_a
    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p2, v24

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p3, v24

    goto/16 :goto_4

    :cond_b
    div-float v25, v12, v11

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v25, v26, v28

    if-gtz v25, :cond_c

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p2, v24

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p3, v24

    goto/16 :goto_4

    :cond_c
    div-float v25, v12, v11

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3ffc7ae147ae147bL    # 1.78

    cmpl-double v25, v26, v28

    if-lez v25, :cond_d

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p2, v24

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p3, v24

    goto/16 :goto_4

    :cond_d
    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p2, v24

    new-instance v25, Landroid/graphics/RectF;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v25, p3, v24

    goto/16 :goto_4

    :cond_e
    return-void
.end method

.method public static fillBlurRectForVideo(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/media/MediaMetadataRetriever;)I
    .locals 15

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v11

    float-to-int v7, v11

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v11

    float-to-int v6, v11

    const/16 v11, 0x18

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v11, 0x5a

    if-eq v5, v11, :cond_0

    const/16 v11, 0x10e

    if-ne v5, v11, :cond_2

    :cond_0
    const/16 v11, 0x13

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v4, v11

    const/16 v11, 0x12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v3, v11

    :goto_0
    int-to-float v11, v7

    int-to-float v12, v6

    div-float v2, v11, v12

    div-float v11, v4, v3

    cmpg-float v11, v11, v2

    if-gtz v11, :cond_1

    int-to-float v11, v6

    div-float v1, v11, v3

    mul-float v11, v4, v1

    float-to-int v8, v11

    sub-int v11, v7, v8

    div-int/lit8 v9, v11, 0x2

    const/4 v10, 0x0

    int-to-float v11, v9

    int-to-float v12, v10

    int-to-float v13, v8

    int-to-float v14, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float v11, v9

    int-to-float v12, v10

    int-to-float v13, v8

    int-to-float v14, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_1
    return v5

    :cond_2
    const/16 v11, 0x13

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v3, v11

    const/16 v11, 0x12

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v4, v11

    goto :goto_0
.end method

.method public static fillDefaultZoomKenburns(Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 34

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v17, v0

    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v14, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v13, v0

    :try_start_0
    new-instance v11, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v30, "Orientation"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v12

    const/16 v30, 0x6

    move/from16 v0, v30

    if-ne v12, v0, :cond_0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v14, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v13, v0

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v30, 0x42b40000    # 90.0f

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_0
    const/16 v30, 0x8

    move/from16 v0, v30

    if-ne v12, v0, :cond_1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v14, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v13, v0

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v30, -0x3d4c0000    # -90.0f

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v9, v30, v31

    div-float v30, v14, v13

    cmpg-float v30, v30, v9

    if-gtz v30, :cond_2

    div-float v30, v14, v13

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    cmpl-double v30, v30, v32

    if-lez v30, :cond_2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v7, v30, v13

    mul-float v30, v14, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v30, v18, v23

    div-int/lit8 v26, v30, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v20, v0

    sub-int v30, v17, v20

    div-int/lit8 v29, v30, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p2

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3ff199999999999aL    # 1.1

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v22, v0

    sub-int v30, v18, v22

    div-int/lit8 v25, v30, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v30, v17, v19

    div-int/lit8 v28, v30, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    return-void

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    div-float v30, v14, v13

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v7, v30, v13

    mul-float v30, v14, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v30, v18, v23

    div-int/lit8 v26, v30, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v20, v0

    sub-int v30, v17, v20

    div-int/lit8 v29, v30, 0x2

    if-eqz p4, :cond_3

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    mul-float v30, v30, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    :cond_3
    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3ff199999999999aL    # 1.1

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v22, v0

    sub-int v30, v18, v22

    div-int/lit8 v25, v30, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v30, v17, v19

    div-int/lit8 v28, v30, 0x2

    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    mul-float v30, v30, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v28, v0

    :cond_4
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p2

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    :cond_5
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v8, v30, v14

    mul-float v30, v8, v13

    move/from16 v0, v30

    float-to-int v6, v0

    sub-int v30, v17, v6

    div-int/lit8 v27, v30, 0x2

    int-to-float v0, v6

    move/from16 v30, v0

    mul-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v32, v0

    int-to-float v0, v6

    move/from16 v33, v0

    move-object/from16 v0, p2

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    sub-int v24, v18, v21

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v32, v0

    int-to-float v0, v6

    move/from16 v33, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1
.end method

.method public static fillFaceBasedKenburns(Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 38

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v19, v0

    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v15, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v14, v0

    const-string/jumbo v32, "HighLightVideoAnalyser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " cloud_thumbnail imageW = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "   imageH"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v12, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v32, "Orientation"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v13

    const/16 v32, 0x6

    move/from16 v0, v32

    if-ne v13, v0, :cond_0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v15, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v14, v0

    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v32, 0x42b40000    # 90.0f

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_0
    const/16 v32, 0x8

    move/from16 v0, v32

    if-ne v13, v0, :cond_1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v15, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v14, v0

    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v32, -0x3d4c0000    # -90.0f

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v13, v15, v14}, Lcom/samsung/app/highlightplayer/util/Utils;->updateFaceRectBasedOnOrientation(Ljava/lang/String;Landroid/graphics/RectF;IFF)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    div-float v32, v15, v14

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    cmpg-double v32, v32, v34

    if-lez v32, :cond_2

    div-float v32, v15, v14

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_11

    div-float v32, v15, v14

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff8000000000000L    # 1.5

    cmpg-double v32, v32, v34

    if-gez v32, :cond_11

    :cond_2
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3fd999999999999aL    # 0.4

    float-to-double v0, v15

    move-wide/from16 v36, v0

    mul-double v34, v34, v36

    cmpl-double v32, v32, v34

    if-lez v32, :cond_10

    sget-object v16, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->PAN_UP_2_DOWN:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    :goto_1
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3fc999999999999aL    # 0.2

    float-to-double v0, v15

    move-wide/from16 v36, v0

    mul-double v34, v34, v36

    cmpg-double v32, v32, v34

    if-gez v32, :cond_3

    sget-object v16, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->ZOOM_IN_FACE:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    :cond_3
    :goto_2
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v9, v32, v33

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v7, v32, v14

    sget-object v32, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->ZOOM_IN_DEFAULT:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_4

    mul-float v32, v15, v7

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v25, v0

    sub-int v32, v20, v25

    div-int/lit8 v28, v32, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v9

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v32, v19, v22

    div-int/lit8 v31, v32, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3ff199999999999aL    # 1.1

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v24, v0

    sub-int v32, v20, v24

    div-int/lit8 v27, v32, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v9

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v32, v19, v21

    div-int/lit8 v30, v32, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p3

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_4
    sget-object v32, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->PAN_LEFT_2_RIGHT:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_6

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v8, v32, v15

    mul-float v32, v8, v14

    move/from16 v0, v32

    float-to-int v6, v0

    sub-int v32, v19, v6

    div-int/lit8 v29, v32, 0x2

    int-to-float v0, v6

    move/from16 v32, v0

    mul-float v32, v32, v9

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v23, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v6

    move/from16 v35, v0

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    sub-int v26, v20, v23

    if-gez v26, :cond_5

    const/16 v26, 0x0

    :cond_5
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v6

    move/from16 v35, v0

    move-object/from16 v0, p3

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    sget-object v32, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->PAN_UP_2_DOWN:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_c

    mul-float v32, v15, v7

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v25, v0

    sub-int v32, v20, v25

    div-int/lit8 v28, v32, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v9

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    mul-float v32, v32, v7

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    mul-float v32, v32, v7

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    sub-int v31, v31, v32

    if-gez v31, :cond_7

    const/16 v31, 0x0

    :cond_7
    add-int v32, v31, v22

    move/from16 v0, v32

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    sub-int v31, v19, v22

    :cond_8
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v32, v0

    div-float v32, v15, v32

    const/high16 v33, 0x40000000    # 2.0f

    cmpg-float v32, v32, v33

    if-gez v32, :cond_13

    const/4 v10, 0x2

    :goto_3
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v33, v33, v34

    add-float v32, v32, v33

    mul-float v32, v32, v7

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v30, v0

    if-gez v30, :cond_9

    const/16 v30, 0x0

    :cond_9
    add-int v32, v30, v22

    move/from16 v0, v32

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    sub-int v30, v19, v22

    :cond_a
    sub-int v32, v30, v31

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(I)I

    move-result v32

    const/16 v33, 0x64

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_b

    sget-object v16, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->ZOOM_IN_FACE:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    :cond_b
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p3

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_c
    sget-object v32, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->ZOOM_IN_FACE:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_f

    mul-float v32, v15, v7

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v25, v0

    sub-int v32, v20, v25

    div-int/lit8 v28, v32, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v9

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    mul-float v32, v32, v7

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    mul-float v32, v32, v7

    const/high16 v33, 0x40800000    # 4.0f

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    sub-int v31, v31, v32

    if-gez v31, :cond_d

    const/16 v31, 0x0

    :cond_d
    add-int v32, v31, v22

    move/from16 v0, v32

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    sub-int v31, v19, v22

    :cond_e
    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3ff199999999999aL    # 1.1

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v24, v0

    sub-int v32, v20, v24

    div-int/lit8 v27, v32, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v9

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v32, v22, v21

    div-int/lit8 v32, v32, 0x2

    add-int v30, v31, v32

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p3

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_f
    return-void

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_10
    sget-object v16, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->ZOOM_IN_FACE:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    goto/16 :goto_1

    :cond_11
    div-float v32, v15, v14

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3ffc7ae147ae147bL    # 1.78

    cmpl-double v32, v32, v34

    if-lez v32, :cond_12

    sget-object v16, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->PAN_LEFT_2_RIGHT:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    goto/16 :goto_2

    :cond_12
    sget-object v16, Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;->ZOOM_IN_DEFAULT:Lcom/samsung/app/highlightplayer/util/Utils$KenburnsType;

    goto/16 :goto_2

    :cond_13
    const/16 v10, 0x10

    goto/16 :goto_3
.end method

.method public static fillImageSameStartEndZoomKenburn(Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 30

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v17, v0

    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v14, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v13, v0

    :try_start_0
    new-instance v11, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v26, "Orientation"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v12

    const/16 v26, 0x6

    move/from16 v0, v26

    if-ne v12, v0, :cond_0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v14, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v13, v0

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v26, 0x42b40000    # 90.0f

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_0
    const/16 v26, 0x8

    move/from16 v0, v26

    if-ne v12, v0, :cond_1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v14, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v13, v0

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v26, -0x3d4c0000    # -90.0f

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v9, v26, v27

    div-float v26, v14, v13

    cmpg-float v26, v26, v9

    if-gtz v26, :cond_2

    div-float v26, v14, v13

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, v26, v28

    if-lez v26, :cond_2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v7, v26, v13

    mul-float v26, v14, v7

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v26, v18, v21

    div-int/lit8 v23, v26, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v9

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v26, v17, v19

    div-int/lit8 v25, v26, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    return-void

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    div-float v26, v14, v13

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v26, v26, v28

    if-gtz v26, :cond_4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v7, v26, v13

    mul-float v26, v14, v7

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v26, v18, v21

    div-int/lit8 v23, v26, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v9

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v26, v17, v19

    div-int/lit8 v25, v26, 0x2

    if-eqz p4, :cond_3

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    mul-float v26, v26, v7

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    mul-float v26, v26, v7

    const/high16 v27, 0x40400000    # 3.0f

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    sub-int v25, v25, v26

    if-gez v25, :cond_3

    const/16 v25, 0x0

    :cond_3
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    :cond_4
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v8, v26, v14

    mul-float v26, v8, v13

    move/from16 v0, v26

    float-to-int v6, v0

    sub-int v26, v17, v6

    div-int/lit8 v24, v26, 0x2

    int-to-float v0, v6

    move/from16 v26, v0

    mul-float v26, v26, v9

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v6

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v6

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1
.end method

.method public static fillSequentialZoomKenburns2(Ljava/lang/String;Landroid/graphics/RectF;[Landroid/graphics/RectF;[Landroid/graphics/RectF;[Landroid/graphics/RectF;)V
    .locals 28

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    const/4 v2, 0x3

    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v16, v0

    :try_start_0
    new-instance v10, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v23, "Orientation"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v11

    const/16 v23, 0x6

    move/from16 v0, v23

    if-ne v11, v0, :cond_0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v16, v0

    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v23, 0x42b40000    # 90.0f

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_0
    const/16 v23, 0x8

    move/from16 v0, v23

    if-ne v11, v0, :cond_1

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v16, v0

    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v23, -0x3d4c0000    # -90.0f

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v7, v23, v16

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v8, v23, v24

    mul-float v23, v17, v7

    move/from16 v0, v23

    float-to-int v4, v0

    int-to-float v0, v4

    move/from16 v23, v0

    div-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v3, v0

    sub-int v23, v22, v4

    div-int/lit8 v5, v23, 0x2

    const/4 v6, 0x0

    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    if-nez v19, :cond_6

    aget-object v23, p4, v19

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    mul-float v23, v23, v7

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    mul-int/lit8 v12, v23, 0x3

    int-to-double v0, v12

    move-wide/from16 v24, v0

    const-wide v26, 0x3ffc51eb851eb852L    # 1.77

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v13, v0

    aget-object v23, p4, v19

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    mul-float v23, v23, v7

    int-to-float v0, v5

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v13, 0x3

    sub-int v14, v23, v24

    if-ge v14, v5, :cond_2

    move v14, v5

    :cond_2
    aget-object v23, p4, v19

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    mul-float v23, v23, v7

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v12, 0x3

    sub-int v15, v23, v24

    if-ge v15, v6, :cond_3

    move v15, v6

    :cond_3
    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v23, p2, v19

    aget-object v23, p2, v19

    int-to-float v0, v14

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    aget-object v23, p2, v19

    int-to-float v0, v15

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    aget-object v23, p2, v19

    int-to-float v0, v13

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    aget-object v23, p2, v19

    int-to-float v0, v12

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v23, v19, 0x1

    aget-object v23, p4, v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    mul-float v23, v23, v7

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    mul-int/lit8 v12, v23, 0x3

    int-to-double v0, v12

    move-wide/from16 v24, v0

    const-wide v26, 0x3ffc51eb851eb852L    # 1.77

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v13, v0

    add-int/lit8 v23, v19, 0x1

    aget-object v23, p4, v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    mul-float v23, v23, v7

    int-to-float v0, v5

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v13, 0x3

    sub-int v14, v23, v24

    if-ge v14, v5, :cond_4

    move v14, v5

    :cond_4
    add-int/lit8 v23, v19, 0x1

    aget-object v23, p4, v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    mul-float v23, v23, v7

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v12, 0x3

    sub-int v15, v23, v24

    if-ge v15, v6, :cond_5

    move v15, v6

    :cond_5
    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v23, p3, v19

    aget-object v23, p3, v19

    int-to-float v0, v14

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    aget-object v23, p3, v19

    int-to-float v0, v15

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    aget-object v23, p3, v19

    int-to-float v0, v13

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    aget-object v23, p3, v19

    int-to-float v0, v12

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v23, p2, v19

    add-int/lit8 v23, v19, -0x1

    aget-object v23, p3, v23

    aput-object v23, p2, v19

    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v23, p3, v19

    aget-object v23, p3, v19

    int-to-float v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    aget-object v23, p3, v19

    int-to-float v0, v6

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    aget-object v23, p3, v19

    int-to-float v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    aget-object v23, p3, v19

    int-to-float v0, v3

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_7
    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v23, p2, v19

    add-int/lit8 v23, v19, -0x1

    aget-object v23, p3, v23

    aput-object v23, p2, v19

    add-int/lit8 v23, v19, 0x1

    aget-object v23, p4, v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    mul-float v23, v23, v7

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    mul-int/lit8 v12, v23, 0x3

    int-to-double v0, v12

    move-wide/from16 v24, v0

    const-wide v26, 0x3ffc51eb851eb852L    # 1.77

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v13, v0

    add-int/lit8 v23, v19, 0x1

    aget-object v23, p4, v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    mul-float v23, v23, v7

    int-to-float v0, v5

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v13, 0x3

    sub-int v14, v23, v24

    if-ge v14, v5, :cond_8

    move v14, v5

    :cond_8
    add-int/lit8 v23, v19, 0x1

    aget-object v23, p4, v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    mul-float v23, v23, v7

    int-to-float v0, v6

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v12, 0x3

    sub-int v15, v23, v24

    if-ge v15, v6, :cond_9

    move v15, v6

    :cond_9
    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    aput-object v23, p3, v19

    aget-object v23, p3, v19

    int-to-float v0, v14

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    aget-object v23, p3, v19

    int-to-float v0, v15

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    aget-object v23, p3, v19

    int-to-float v0, v13

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    aget-object v23, p3, v19

    int-to-float v0, v12

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    :cond_a
    return-void
.end method

.method public static fillVideoSameStartEndZoomKenburn(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/media/MediaMetadataRetriever;)V
    .locals 26

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->width()F

    move-result v22

    move/from16 v0, v22

    float-to-int v14, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->height()F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    const/16 v22, 0x18

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v22, 0x5a

    move/from16 v0, v22

    if-eq v12, v0, :cond_0

    const/16 v22, 0x10e

    move/from16 v0, v22

    if-ne v12, v0, :cond_1

    :cond_0
    const/16 v22, 0x13

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-float v11, v0

    const/16 v22, 0x12

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-float v10, v0

    :goto_0
    int-to-float v0, v14

    move/from16 v22, v0

    int-to-float v0, v13

    move/from16 v23, v0

    div-float v9, v22, v23

    div-float v22, v11, v10

    cmpg-float v22, v22, v9

    if-gtz v22, :cond_2

    div-float v22, v11, v10

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_2

    int-to-float v0, v13

    move/from16 v22, v0

    div-float v7, v22, v10

    mul-float v22, v11, v7

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v22, v14, v17

    div-int/lit8 v19, v22, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v22, v9

    move/from16 v0, v22

    float-to-int v15, v0

    sub-int v22, v13, v15

    div-int/lit8 v21, v22, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v15

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v15

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    return-void

    :cond_1
    const/16 v22, 0x13

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-float v10, v0

    const/16 v22, 0x12

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-float v11, v0

    goto/16 :goto_0

    :cond_2
    div-float v22, v11, v10

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpg-double v22, v22, v24

    if-gtz v22, :cond_3

    int-to-float v0, v13

    move/from16 v22, v0

    div-float v7, v22, v10

    mul-float v22, v11, v7

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v22, v14, v17

    div-int/lit8 v19, v22, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v22, v9

    move/from16 v0, v22

    float-to-int v15, v0

    sub-int v22, v13, v15

    div-int/lit8 v21, v22, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v15

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v15

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    :cond_3
    int-to-float v0, v14

    move/from16 v22, v0

    div-float v8, v22, v11

    mul-float v22, v8, v10

    move/from16 v0, v22

    float-to-int v6, v0

    sub-int v22, v13, v6

    div-int/lit8 v20, v22, 0x2

    int-to-float v0, v6

    move/from16 v22, v0

    mul-float v22, v22, v9

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v6

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v6

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1
.end method

.method public static getCloudInfo(Ljava/lang/String;Landroid/content/Context;)I
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string/jumbo v7, ""

    :try_start_0
    const-string/jumbo v6, "is_cloud"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/app/highlightplayer/util/Utils;->CMH_FILES_TABLE_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_data=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    :cond_0
    if-eqz v8, :cond_1

    const-string/jumbo v0, "HighLightVideoAnalyser"

    const-string/jumbo v1, "Closing CMH cursor from isBurstShotImage method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v10

    :catch_0
    move-exception v9

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    const-string/jumbo v0, "HighLightVideoAnalyser"

    const-string/jumbo v1, "Closing CMH cursor from isBurstShotImage method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    const-string/jumbo v1, "HighLightVideoAnalyser"

    const-string/jumbo v3, "Closing CMH cursor from isBurstShotImage method"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getEventName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string/jumbo v0, "content://com.samsung.app.highlightvideo.eventsummary/EventThumbnail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getInitialApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HighlightEventName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v8

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getImageAR(Ljava/lang/String;)F
    .locals 10

    const/4 v8, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v8

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v8

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "Orientation"

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v8, 0x6

    if-ne v2, v8, :cond_0

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v8

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v8

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_0
    const/16 v8, 0x8

    if-ne v2, v8, :cond_1

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v8

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v8

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    div-float v3, v5, v4

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPosRatio(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string/jumbo v11, ""

    :try_start_0
    const-string/jumbo v6, "pos_ratio"

    const-string/jumbo v7, "fileid"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/app/highlightplayer/util/Utils;->CMH_SUMMARY_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_0
    const-string/jumbo v0, "HighLightVideoAnalyser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " getPosRatio = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v8, :cond_2

    const-string/jumbo v0, "HighLightVideoAnalyser"

    const-string/jumbo v1, "Closing CMH cursor from getPosRatio method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v11

    :catch_0
    move-exception v9

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    const-string/jumbo v0, "HighLightVideoAnalyser"

    const-string/jumbo v1, "Closing CMH cursor from getPosRatio method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    const-string/jumbo v1, "HighLightVideoAnalyser"

    const-string/jumbo v3, "Closing CMH cursor from getPosRatio method"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static initDimensions()V
    .locals 2

    :try_start_0
    sget v1, Lcom/samsung/app/highlightplayer/R$dimen;->lite_preview_width:I

    invoke-static {v1}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    sget v1, Lcom/samsung/app/highlightplayer/R$dimen;->lite_preview_height:I

    invoke-static {v1}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    sget v1, Lcom/samsung/app/highlightplayer/R$dimen;->lite_preview_width:I

    invoke-static {v1}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/ve/common/ConfigUtils;->PREVIEW_WIDTH:I

    sget v1, Lcom/samsung/app/highlightplayer/R$dimen;->lite_preview_height:I

    invoke-static {v1}, Lcom/sec/android/app/ve/VEApp;->getPixDimen(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/ve/common/ConfigUtils;->PREVIEW_HEIGHT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isBurstShotApplicable(II)I
    .locals 3

    const/16 v2, 0x9

    const/4 v1, 0x4

    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_2

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_3

    const/16 v1, 0xd

    if-eq p1, v1, :cond_3

    const/16 v1, 0x12

    if-ne p1, v1, :cond_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static isBurstShotImage(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v1, "HighLightVideoAnalyser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " inside isBurstShotImage filepath = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/app/highlightplayer/util/Utils;->isSupportedCMHVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p0 .. p1}, Lcom/samsung/app/highlightplayer/util/Utils;->getCloudInfo(Ljava/lang/String;Landroid/content/Context;)I

    move-result v17

    :cond_0
    const-string/jumbo v11, "group_id"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v11, v3, v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/app/highlightplayer/util/Utils;->CMH_FILES_TABLE_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "media_id=(SELECT media_id from files where _data=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/samsung/app/highlightplayer/util/Utils;->isSupportedCMHVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    move/from16 v0, v17

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/app/highlightplayer/util/Utils;->CMH_FILES_TABLE_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "media_id=(SELECT media_id from files where cloud_thumb_path=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :cond_1
    if-eqz v14, :cond_4

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "HighLightVideoAnalyser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " cursor.getcount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string/jumbo v1, "HighLightVideoAnalyser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " groupID = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v16, :cond_4

    const-string/jumbo v12, "_data"

    const-string/jumbo v10, "cloud_thumb_path"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v12, v6, v1

    invoke-static/range {p1 .. p1}, Lcom/samsung/app/highlightplayer/util/Utils;->isSupportedCMHVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    move/from16 v0, v17

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v6, v1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/app/highlightplayer/util/Utils;->CMH_FILES_TABLE_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "group_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v1, "HighLightVideoAnalyser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mediaListCursor.getcount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "HighLightVideoAnalyser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " media ids for group id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " are "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    :cond_4
    if-eqz v14, :cond_5

    const-string/jumbo v1, "HighLightVideoAnalyser"

    const-string/jumbo v2, "Closing CMH cursor from isBurstShotImage method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v18, :cond_6

    const-string/jumbo v1, "HighLightVideoAnalyser"

    const-string/jumbo v2, "Closing CMH cursor<medialistcursor> from isBurstShotImage method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_0
    return-object v13

    :catch_0
    move-exception v15

    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_7

    const-string/jumbo v1, "HighLightVideoAnalyser"

    const-string/jumbo v2, "Closing CMH cursor from isBurstShotImage method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v18, :cond_6

    const-string/jumbo v1, "HighLightVideoAnalyser"

    const-string/jumbo v2, "Closing CMH cursor<medialistcursor> from isBurstShotImage method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v14, :cond_8

    const-string/jumbo v2, "HighLightVideoAnalyser"

    const-string/jumbo v4, "Closing CMH cursor from isBurstShotImage method"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v18, :cond_9

    const-string/jumbo v2, "HighLightVideoAnalyser"

    const-string/jumbo v4, "Closing CMH cursor<medialistcursor> from isBurstShotImage method"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1
.end method

.method public static isDreamProject()Z
    .locals 2

    const-string/jumbo v0, "dreamEP"

    const-string/jumbo v1, "dreamGP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "dreamGP"

    const-string/jumbo v1, "dreamGP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEditableProject(Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.app.highlightplayer"

    const-string/jumbo v3, "com.samsung.app.highlightplayer.activity.HighlightEditActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGraceProject()Z
    .locals 2

    const-string/jumbo v0, "graceEP"

    const-string/jumbo v1, "dreamGP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "graceGP"

    const-string/jumbo v1, "dreamGP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInvalidRatioList(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "NULL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "NULL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "NULL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "NULL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isSupportedCMHVersion(Landroid/content/Context;)Z
    .locals 9

    const/4 v5, 0x0

    const-string/jumbo v0, "com.samsung.cmh"

    const v1, 0xc14f4e0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string/jumbo v6, "HighLightVideoAnalyser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " in isSupportedCMHVersion versionCode is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v4, v1, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v2

    const-string/jumbo v6, "HighLightVideoAnalyser"

    const-string/jumbo v7, "CMH package not supported the DB fields"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isValidCloudFile()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/app/highlightplayer/util/Utils;->isValidCloudFile:Z

    return v0
.end method

.method public static setIsCloudFile(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/app/highlightplayer/util/Utils;->isCloudFile:Z

    return-void
.end method

.method public static setIsValidCloudFile(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/app/highlightplayer/util/Utils;->isValidCloudFile:Z

    return-void
.end method

.method private static updateFaceRectBasedOnOrientation(Landroid/graphics/RectF;IFF)V
    .locals 6

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x6

    if-ne p1, v4, :cond_0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Landroid/graphics/RectF;->right:F

    :cond_0
    const/16 v4, 0x8

    if-ne p1, v4, :cond_1

    iget v4, p0, Landroid/graphics/RectF;->top:F

    sub-float v4, p2, v4

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v4, v5

    iget v4, p0, Landroid/graphics/RectF;->left:F

    sub-float v4, p3, v4

    iget v5, p0, Landroid/graphics/RectF;->right:F

    sub-float v3, v4, v5

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Landroid/graphics/RectF;->right:F

    :cond_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Landroid/graphics/RectF;->top:F

    sub-float v4, p3, v4

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v4, v5

    :cond_2
    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private static updateFaceRectBasedOnOrientation(Ljava/lang/String;Landroid/graphics/RectF;IFF)V
    .locals 16

    sget-object v13, Lcom/samsung/app/highlightplayer/util/Utils;->posRatioMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v11, :cond_0

    array-length v13, v11

    if-lez v13, :cond_0

    const/4 v13, 0x1

    aget-object v13, v11, v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    aget-object v13, v11, v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x1

    aget-object v13, v11, v13

    const-string/jumbo v14, "NULL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x1

    aget-object v13, v11, v13

    const-string/jumbo v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v13, "HighLightVideoAnalyser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Pos ratio values = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_6

    invoke-static {v8}, Lcom/samsung/app/highlightplayer/util/Utils;->isInvalidRatioList(Ljava/util/List;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string/jumbo v13, "HighLightVideoAnalyser"

    const-string/jumbo v14, " values != null, thus CMH version has new data "

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x6

    move/from16 v0, p2

    if-eq v0, v13, :cond_1

    const/16 v13, 0x8

    move/from16 v0, p2

    if-ne v0, v13, :cond_5

    :cond_1
    move/from16 v12, p4

    move/from16 v6, p3

    :goto_0
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    mul-float v3, v13, v12

    const/4 v13, 0x1

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    mul-float v5, v13, v6

    const/4 v13, 0x2

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    mul-float v14, v13, v12

    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    mul-float/2addr v13, v12

    sub-float v4, v14, v13

    const/4 v13, 0x3

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    mul-float v14, v13, v6

    const/4 v13, 0x1

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    mul-float/2addr v13, v6

    sub-float v2, v14, v13

    const-string/jumbo v13, "HighLightVideoAnalyser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " Cloud thumbnail Face left, top, right, bottom:  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v3

    move v10, v5

    move v9, v4

    move v1, v2

    const/4 v13, 0x6

    move/from16 v0, p2

    if-ne v0, v13, :cond_2

    const-string/jumbo v13, "HighLightVideoAnalyser"

    const-string/jumbo v14, " Is Cloud file Orientation 90 "

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    move v10, v3

    move v9, v2

    move v1, v4

    :cond_2
    const/16 v13, 0x8

    move/from16 v0, p2

    if-ne v0, v13, :cond_3

    const-string/jumbo v13, "HighLightVideoAnalyser"

    const-string/jumbo v14, " Is Cloud file Orientation 270 "

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-float v13, p3, v5

    sub-float v7, v13, v2

    sub-float v13, p4, v3

    sub-float v10, v13, v4

    move v9, v2

    move v1, v4

    :cond_3
    const/4 v13, 0x3

    move/from16 v0, p2

    if-ne v0, v13, :cond_4

    const-string/jumbo v13, "HighLightVideoAnalyser"

    const-string/jumbo v14, " Is Cloud file Orientation 180 "

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v3

    move v9, v4

    move v1, v2

    sub-float v13, p4, v5

    sub-float v10, v13, v2

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v10, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const-string/jumbo v13, "HighLightVideoAnalyser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " Cloud thumbnail final face rect left, top, right, bottom:  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_5
    move/from16 v12, p3

    move/from16 v6, p4

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v13, "HighLightVideoAnalyser"

    const-string/jumbo v14, "  values == null, thus CMH version does not have new data so call old method  "

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p4}, Lcom/samsung/app/highlightplayer/util/Utils;->updateFaceRectBasedOnOrientation(Landroid/graphics/RectF;IFF)V

    goto :goto_1
.end method
