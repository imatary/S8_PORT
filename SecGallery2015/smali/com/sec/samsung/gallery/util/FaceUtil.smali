.class public Lcom/sec/samsung/gallery/util/FaceUtil;
.super Ljava/lang/Object;
.source "FaceUtil.java"


# static fields
.field public static final FACE_ITEM_NAME:Ljava/lang/String; = "FACE_ITEM_NAME"

.field public static final FACE_ITEM_PATH:Ljava/lang/String; = "FACE_ITEM_PATH"

.field public static final FACE_ITEM_RECT:Ljava/lang/String; = "FACE_ITEM_RECT"

.field public static final FACE_ITEM_ROTATION:Ljava/lang/String; = "FACE_ITEM_ROTATION"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcFaceCropRect(IILandroid/graphics/RectF;FFI)Landroid/graphics/Rect;
    .locals 15

    if-eqz p2, :cond_3

    if-eqz p5, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->top:F

    const/16 v12, 0x5a

    move/from16 v0, p5

    if-eq v0, v12, :cond_0

    const/16 v12, 0xb4

    move/from16 v0, p5

    if-ne v0, v12, :cond_1

    :cond_0
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v11

    sub-float v8, v12, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v7

    sub-float v10, v12, v10

    :cond_1
    move/from16 v0, p5

    rem-int/lit16 v12, v0, 0xb4

    if-eqz v12, :cond_2

    move v9, v10

    move v10, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v9

    sub-float v8, v12, v7

    move v9, v11

    move v11, v7

    move v7, v9

    :cond_2
    new-instance p2, Landroid/graphics/RectF;

    add-float v12, v8, v11

    add-float v13, v10, v7

    move-object/from16 v0, p2

    invoke-direct {v0, v8, v10, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_3
    move/from16 v0, p5

    rem-int/lit16 v12, v0, 0xb4

    if-eqz v12, :cond_4

    move/from16 v9, p3

    move/from16 p3, p4

    float-to-int v12, v9

    int-to-float v0, v12

    move/from16 p4, v0

    :cond_4
    move/from16 v0, p1

    int-to-float v12, v0

    mul-float v12, v12, p3

    int-to-float v13, p0

    mul-float v13, v13, p4

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    move v2, p0

    int-to-float v12, p0

    mul-float v12, v12, p4

    div-float v12, v12, p3

    float-to-int v1, v12

    const/4 v3, 0x0

    sub-int v12, p1, v1

    div-int/lit8 v4, v12, 0x2

    :goto_0
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->left:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_5

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    int-to-float v13, p0

    mul-float/2addr v12, v13

    float-to-int v5, v12

    div-int/lit8 v12, v2, 0x2

    sub-int v3, v5, v12

    if-gez v3, :cond_8

    const/4 v3, 0x0

    :cond_5
    :goto_1
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->top:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_6

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move/from16 v0, p1

    int-to-float v13, v0

    mul-float/2addr v12, v13

    float-to-int v6, v12

    div-int/lit8 v12, v1, 0x2

    sub-int v4, v6, v12

    if-gez v4, :cond_9

    const/4 v4, 0x0

    :cond_6
    :goto_2
    new-instance v12, Landroid/graphics/Rect;

    add-int v13, v3, v2

    add-int v14, v4, v1

    invoke-direct {v12, v3, v4, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v12

    :cond_7
    move/from16 v1, p1

    move/from16 v0, p1

    int-to-float v12, v0

    mul-float v12, v12, p3

    div-float v12, v12, p4

    float-to-int v2, v12

    const/4 v4, 0x0

    sub-int v12, p0, v2

    div-int/lit8 v3, v12, 0x2

    goto :goto_0

    :cond_8
    sub-int v12, p0, v2

    if-le v3, v12, :cond_5

    sub-int v3, p0, v2

    goto :goto_1

    :cond_9
    sub-int v12, p1, v1

    if-le v4, v12, :cond_6

    sub-int v4, p1, v1

    goto :goto_2
.end method

.method public static calcFaceCropRect(IILandroid/graphics/RectF;I)Landroid/graphics/Rect;
    .locals 15

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->top:F

    const/16 v12, 0x5a

    move/from16 v0, p3

    if-eq v0, v12, :cond_0

    const/16 v12, 0xb4

    move/from16 v0, p3

    if-ne v0, v12, :cond_1

    :cond_0
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v11

    sub-float v8, v12, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v7

    sub-float v10, v12, v10

    :cond_1
    move/from16 v0, p3

    rem-int/lit16 v12, v0, 0xb4

    if-eqz v12, :cond_2

    move v9, v10

    move v10, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v9

    sub-float v8, v12, v7

    move v9, v11

    move v11, v7

    move v7, v9

    :cond_2
    new-instance p2, Landroid/graphics/RectF;

    add-float v12, v8, v11

    add-float v13, v10, v7

    move-object/from16 v0, p2

    invoke-direct {v0, v8, v10, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_3
    move/from16 v0, p1

    if-le v0, p0, :cond_6

    move v2, p0

    move v1, p0

    const/4 v3, 0x0

    sub-int v12, p1, v1

    div-int/lit8 v4, v12, 0x2

    :goto_0
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->left:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_4

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    int-to-float v13, p0

    mul-float/2addr v12, v13

    float-to-int v5, v12

    div-int/lit8 v12, v2, 0x2

    sub-int v3, v5, v12

    if-gez v3, :cond_7

    const/4 v3, 0x0

    :cond_4
    :goto_1
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->top:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_5

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move/from16 v0, p1

    int-to-float v13, v0

    mul-float/2addr v12, v13

    float-to-int v6, v12

    div-int/lit8 v12, v1, 0x2

    sub-int v4, v6, v12

    if-gez v4, :cond_8

    const/4 v4, 0x0

    :cond_5
    :goto_2
    new-instance v12, Landroid/graphics/Rect;

    add-int v13, v3, v2

    add-int v14, v4, v1

    invoke-direct {v12, v3, v4, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v12

    :cond_6
    move/from16 v1, p1

    move/from16 v2, p1

    const/4 v4, 0x0

    sub-int v12, p0, v2

    div-int/lit8 v3, v12, 0x2

    goto :goto_0

    :cond_7
    sub-int v12, p0, v2

    if-le v3, v12, :cond_4

    sub-int v3, p0, v2

    goto :goto_1

    :cond_8
    sub-int v12, p1, v1

    if-le v4, v12, :cond_5

    sub-int v4, p1, v1

    goto :goto_2
.end method
