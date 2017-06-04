.class public Lcom/sec/android/gallery3d/util/SmartCropUtils;
.super Ljava/lang/Object;
.source "SmartCropUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcSmartCropRectForStory(Landroid/graphics/RectF;IIFFI)Landroid/graphics/Rect;
    .locals 10

    int-to-float v0, p1

    iget v1, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v1

    float-to-int v4, v0

    int-to-float v0, p2

    iget v1, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v1

    float-to-int v5, v0

    int-to-float v0, p1

    iget v1, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    int-to-float v0, p2

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    div-float v8, p4, p3

    rem-int/lit16 v0, p5, 0xb4

    if-nez v0, :cond_0

    sub-int v0, v7, v5

    int-to-float v0, v0

    sub-int v1, v6, v4

    int-to-float v1, v1

    div-float v9, v0, v1

    :goto_0
    rem-int/lit16 v0, p5, 0xb4

    if-nez v0, :cond_1

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v9}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->getHorizontalCropRect(IIFFIIIIFF)Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    sub-int v0, v6, v4

    int-to-float v0, v0

    sub-int v1, v7, v5

    int-to-float v1, v1

    div-float v9, v0, v1

    goto :goto_0

    :cond_1
    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v9}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->getVerticalCropRect(IIFFIIIIFF)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1
.end method

.method private static getCropRectBasedOnBitmapHeight(IIIIII)Landroid/graphics/Rect;
    .locals 5

    add-int v4, p2, p4

    div-int/lit8 v2, v4, 0x2

    div-int/lit8 v4, p0, 0x2

    sub-int v0, v2, v4

    div-int/lit8 v4, p0, 0x2

    add-int v1, v2, v4

    if-ltz v0, :cond_0

    if-le v1, p1, :cond_8

    :cond_0
    const/4 v3, 0x0

    div-int/lit8 v4, p1, 0x2

    if-ge v2, v4, :cond_4

    if-lt p2, v0, :cond_2

    move p2, v0

    if-ge p4, v1, :cond_1

    move p4, v1

    :cond_1
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    :cond_2
    const/4 p2, 0x0

    sub-int v3, v0, p2

    if-ge p4, v1, :cond_3

    add-int p4, v1, v3

    :goto_1
    goto :goto_0

    :cond_3
    add-int/2addr p4, v3

    goto :goto_1

    :cond_4
    if-lt p4, v1, :cond_6

    move p4, v1

    if-ge p2, v0, :cond_5

    move p2, v0

    :cond_5
    goto :goto_0

    :cond_6
    move p4, p1

    sub-int v3, v1, p4

    if-le p2, v0, :cond_7

    sub-int p2, v0, v3

    :goto_2
    goto :goto_0

    :cond_7
    sub-int/2addr p2, v3

    goto :goto_2

    :cond_8
    move p2, v0

    move p4, v1

    goto :goto_0
.end method

.method private static getCropRectBasedOnBitmapWidth(IIIIII)Landroid/graphics/Rect;
    .locals 5

    add-int v4, p3, p5

    div-int/lit8 v3, v4, 0x2

    div-int/lit8 v4, p0, 0x2

    sub-int v1, v3, v4

    div-int/lit8 v4, p0, 0x2

    add-int v0, v3, v4

    if-ltz v1, :cond_0

    if-le v0, p1, :cond_8

    :cond_0
    const/4 v2, 0x0

    div-int/lit8 v4, p1, 0x2

    if-ge v3, v4, :cond_4

    if-gt p3, v1, :cond_2

    move p3, v1

    if-le p5, v0, :cond_1

    move p5, v0

    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    :cond_1
    move p5, p4

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    sub-int v2, v1, p2

    if-ge p5, v0, :cond_3

    sub-int p5, v0, v2

    :goto_1
    goto :goto_0

    :cond_3
    sub-int/2addr p5, v2

    goto :goto_1

    :cond_4
    if-lt p5, v0, :cond_6

    move p5, v0

    if-ge p3, v1, :cond_5

    move p3, v1

    :cond_5
    goto :goto_0

    :cond_6
    move p5, p1

    sub-int v2, v0, p5

    if-le p3, v1, :cond_7

    sub-int p3, v1, v2

    :goto_2
    goto :goto_0

    :cond_7
    sub-int/2addr p3, v2

    goto :goto_2

    :cond_8
    move p3, v1

    move p5, v0

    goto :goto_0
.end method

.method private static getHorizontalCropRect(IIFFIIIIFF)Landroid/graphics/Rect;
    .locals 7

    cmpg-float v1, p9, p8

    if-gez v1, :cond_1

    if-le p0, p1, :cond_0

    invoke-static/range {p0 .. p7}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->getHorizontalCropRectBasedOnBitmapHeightAndViewRatio(IIFFIIII)Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sub-int v6, p6, p4

    int-to-float v1, v6

    mul-float/2addr v1, p3

    div-float/2addr v1, p2

    float-to-int v0, v1

    move v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->getCropRectBasedOnBitmapWidth(IIIIII)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static/range {p2 .. p7}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->getHorizontalCropRectBasedOnBitmapWidth(FFIIII)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method private static getHorizontalCropRectBasedOnBitmapHeightAndViewRatio(IIFFIIII)Landroid/graphics/Rect;
    .locals 11

    int-to-float v2, p1

    int-to-float v3, p0

    div-float v7, v2, v3

    div-float v10, p3, p2

    cmpl-float v2, v7, v10

    if-lez v2, :cond_0

    sub-int v9, p6, p4

    int-to-float v2, v9

    mul-float/2addr v2, p3

    div-float/2addr v2, p2

    float-to-int v0, v2

    move v1, p1

    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->getCropRectBasedOnBitmapWidth(IIIIII)Landroid/graphics/Rect;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    sub-int v8, p7, p5

    int-to-float v2, v8

    mul-float/2addr v2, p2

    div-float/2addr v2, p3

    float-to-int v1, v2

    move v2, p0

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-static/range {v1 .. v6}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->getCropRectBasedOnBitmapHeight(IIIIII)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0
.end method

.method private static getHorizontalCropRectBasedOnBitmapWidth(FFIIII)Landroid/graphics/Rect;
    .locals 7

    sub-int v3, p4, p2

    div-int/lit8 v4, v3, 0x2

    add-int v6, p2, p4

    div-int/lit8 v0, v6, 0x2

    sub-int v6, v0, v4

    if-ge p2, v6, :cond_0

    sub-int p2, v0, v4

    :cond_0
    add-int v6, v0, v4

    if-le p4, v6, :cond_1

    add-int p4, v0, v4

    :cond_1
    int-to-float v6, v3

    mul-float/2addr v6, p1

    div-float/2addr v6, p0

    float-to-int v1, v6

    div-int/lit8 v2, v1, 0x2

    add-int v6, p3, p5

    div-int/lit8 v5, v6, 0x2

    sub-int v6, v5, v2

    if-ge p3, v6, :cond_2

    sub-int p3, v5, v2

    :cond_2
    add-int v6, v5, v2

    if-le p5, v6, :cond_3

    add-int p5, v5, v2

    :cond_3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method private static getVerticalCropRect(IIFFIIIIFF)Landroid/graphics/Rect;
    .locals 7

    cmpg-float v1, p9, p8

    if-gez v1, :cond_1

    if-le p0, p1, :cond_0

    sub-int v6, p7, p5

    int-to-float v1, v6

    mul-float/2addr v1, p3

    div-float/2addr v1, p2

    float-to-int v0, v1

    move v1, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->getCropRectBasedOnBitmapHeight(IIIIII)Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->getVerticalCropRectBasedOnBitmapWidthAndViewRatio(IIFFIIII)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p7}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->getVerticalCropRectBasedOnBitmapHeight(IFFIIII)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method private static getVerticalCropRectBasedOnBitmapHeight(IFFIIII)Landroid/graphics/Rect;
    .locals 7

    sub-int v3, p6, p4

    div-int/lit8 v4, v3, 0x2

    if-eq v3, p0, :cond_1

    add-int v6, p4, p6

    div-int/lit8 v5, v6, 0x2

    sub-int v6, v5, v4

    if-ge p4, v6, :cond_0

    sub-int p4, v5, v4

    :cond_0
    add-int v6, v5, v4

    if-le p6, v6, :cond_1

    add-int p6, v5, v4

    :cond_1
    int-to-float v6, v3

    mul-float/2addr v6, p2

    div-float/2addr v6, p1

    float-to-int v1, v6

    div-int/lit8 v2, v1, 0x2

    add-int v6, p3, p5

    div-int/lit8 v0, v6, 0x2

    sub-int v6, v0, v2

    if-ge p3, v6, :cond_2

    sub-int p3, v0, v2

    :cond_2
    add-int v6, v0, v2

    if-le p5, v6, :cond_3

    add-int p5, v0, v2

    :cond_3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p3, p4, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method private static getVerticalCropRectBasedOnBitmapWidthAndViewRatio(IIFFIIII)Landroid/graphics/Rect;
    .locals 11

    int-to-float v2, p1

    int-to-float v3, p0

    div-float v7, v2, v3

    div-float v10, p3, p2

    cmpl-float v2, v7, v10

    if-lez v2, :cond_0

    sub-int v8, p7, p5

    int-to-float v2, v8

    mul-float/2addr v2, p2

    div-float/2addr v2, p3

    float-to-int v0, v2

    move v1, p0

    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->getCropRectBasedOnBitmapHeight(IIIIII)Landroid/graphics/Rect;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    sub-int v9, p6, p4

    int-to-float v2, v9

    mul-float/2addr v2, p3

    div-float/2addr v2, p2

    float-to-int v1, v2

    move v2, p1

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-static/range {v1 .. v6}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->getCropRectBasedOnBitmapWidth(IIIIII)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0
.end method
