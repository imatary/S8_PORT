.class public Lcom/sec/android/effect/VignettingEffect;
.super Ljava/lang/Object;
.source "VignettingEffect.java"


# static fields
.field private static BOTTOM_DIM_ALPHA:I = 0x0

.field private static final BOTTOM_TO_TOP:I = 0x1

.field private static final DEFAULT_COLOR:I = 0x14

.field private static final TAG:Ljava/lang/String; = "VignettingEffect"

.field private static TOP_DIM_ALPHA:I

.field private static final TOP_TO_BOTTOM:I

.field private static VIGNETTING_BOTTOM_RATIO:F

.field private static VIGNETTING_TOP_RATIO:F


# instance fields
.field private final LIMITTED_VALUE:I

.field private mDefaultColor:I

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x69

    sput v0, Lcom/sec/android/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    sput v0, Lcom/sec/android/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    const v0, 0x3e19999a    # 0.15f

    sput v0, Lcom/sec/android/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3ea3d70a    # 0.32f

    :goto_0
    sput v0, Lcom/sec/android/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    return-void

    :cond_0
    const v0, 0x3ee66666    # 0.45f

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x6e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/effect/VignettingEffect;->LIMITTED_VALUE:I

    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/effect/VignettingEffect;->mDefaultColor:I

    iput v2, p0, Lcom/sec/android/effect/VignettingEffect;->mWindowWidth:I

    iput v2, p0, Lcom/sec/android/effect/VignettingEffect;->mWindowHeight:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sec/android/effect/VignettingEffect;->mWindowWidth:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/sec/android/effect/VignettingEffect;->mWindowHeight:I

    return-void
.end method

.method private calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v1, v1

    sget v3, Lcom/sec/android/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    sget v3, Lcom/sec/android/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private convertToAlphaValue(I)I
    .locals 1

    mul-int/lit16 v0, p1, 0xff

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private getBitmapCenterCropRect(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v0, "VignettingEffect"

    const-string/jumbo v1, "getCenterCropRect() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v3, p2

    int-to-float v4, p3

    div-float/2addr v3, v4

    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    cmpl-float v4, v4, v3

    if-lez v4, :cond_0

    const-string/jumbo v4, "VignettingEffect"

    const-string/jumbo v5, "left and rigth are cropped"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v6, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    const-string/jumbo v1, "VignettingEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCenterCropRect() end = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string/jumbo v4, "VignettingEffect"

    const-string/jumbo v5, "top and bottom are cropped"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v4, v1

    div-float v3, v4, v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v6, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 30

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, v25

    if-le v0, v2, :cond_2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    :goto_0
    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/4 v3, 0x0

    move/from16 v24, v3

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-wide/from16 v28, v6

    move-wide/from16 v6, v16

    move-wide/from16 v16, v4

    move-wide/from16 v4, v28

    :goto_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v3, v0, :cond_a

    if-eqz v24, :cond_1

    if-nez v3, :cond_3

    :cond_1
    move-wide/from16 v28, v8

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide v14, v6

    move-wide/from16 v6, v28

    :goto_3
    add-int/2addr v3, v2

    move-wide/from16 v28, v6

    move-wide v6, v14

    move-wide v14, v12

    move-wide v12, v10

    move-wide v10, v8

    move-wide/from16 v8, v28

    goto :goto_2

    :cond_2
    move/from16 v0, v25

    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->red(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v18, v16, v22

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->green(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v16, v6, v20

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v14, v6

    const-wide/16 v26, 0x1

    add-long v12, v12, v26

    cmp-long v26, v10, v22

    if-gtz v26, :cond_4

    const-wide/16 v26, 0x0

    cmp-long v26, v10, v26

    if-nez v26, :cond_5

    :cond_4
    move-wide/from16 v10, v22

    :cond_5
    cmp-long v22, v8, v20

    if-gtz v22, :cond_6

    const-wide/16 v22, 0x0

    cmp-long v22, v8, v22

    if-nez v22, :cond_7

    :cond_6
    move-wide/from16 v8, v20

    :cond_7
    cmp-long v20, v4, v6

    if-gtz v20, :cond_8

    const-wide/16 v20, 0x0

    cmp-long v20, v4, v20

    if-nez v20, :cond_9

    :cond_8
    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    goto :goto_3

    :cond_9
    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    goto :goto_3

    :cond_a
    add-int v3, v24, v2

    move/from16 v24, v3

    move-wide/from16 v28, v4

    move-wide/from16 v4, v16

    move-wide/from16 v16, v6

    move-wide/from16 v6, v28

    goto/16 :goto_1

    :cond_b
    div-long v2, v4, v12

    long-to-int v4, v2

    div-long v2, v16, v12

    long-to-int v3, v2

    div-long v12, v14, v12

    long-to-int v2, v12

    int-to-long v12, v4

    cmp-long v5, v12, v10

    if-lez v5, :cond_11

    int-to-long v12, v4

    sub-long v10, v12, v10

    long-to-float v5, v10

    int-to-float v10, v4

    div-float/2addr v5, v10

    const/high16 v10, 0x3e800000    # 0.25f

    cmpl-float v10, v5, v10

    if-lez v10, :cond_c

    const/high16 v5, 0x3e800000    # 0.25f

    :cond_c
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-lez v10, :cond_10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v5, v10, v5

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move v5, v4

    :goto_4
    int-to-long v10, v3

    cmp-long v4, v10, v8

    if-lez v4, :cond_13

    int-to-long v10, v3

    sub-long v8, v10, v8

    long-to-float v4, v8

    int-to-float v8, v3

    div-float/2addr v4, v8

    const/high16 v8, 0x3e800000    # 0.25f

    cmpl-float v8, v4, v8

    if-lez v8, :cond_d

    const/high16 v4, 0x3e800000    # 0.25f

    :cond_d
    const/4 v8, 0x0

    cmpl-float v8, v4, v8

    if-lez v8, :cond_12

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v4, v8, v4

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v3

    :goto_5
    int-to-long v8, v2

    cmp-long v3, v8, v6

    if-lez v3, :cond_f

    int-to-long v8, v2

    sub-long v6, v8, v6

    long-to-float v3, v6

    int-to-float v6, v2

    div-float/2addr v3, v6

    const/high16 v6, 0x3e800000    # 0.25f

    cmpl-float v6, v3, v6

    if-lez v6, :cond_e

    const/high16 v3, 0x3e800000    # 0.25f

    :cond_e
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_f

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v3

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    :cond_f
    const/16 v3, 0xff

    invoke-static {v3, v5, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/16 v6, 0xc8

    if-le v5, v6, :cond_14

    const/16 v5, 0xc8

    if-le v4, v5, :cond_14

    const/16 v4, 0xc8

    if-le v2, v4, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/effect/VignettingEffect;->mDefaultColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_10
    move v5, v4

    goto :goto_4

    :cond_11
    move v5, v4

    goto :goto_4

    :cond_12
    move v4, v3

    goto :goto_5

    :cond_13
    move v4, v3

    goto :goto_5

    :cond_14
    return v3

    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/effect/VignettingEffect;->mDefaultColor:I

    return v2
.end method


# virtual methods
.method public applyBlendedFilter(Landroid/graphics/Bitmap;Landroid/view/View;Landroid/content/Context;)V
    .locals 10

    const-string/jumbo v0, "VignettingEffect"

    const-string/jumbo v1, "applyBlendedFilter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/effect/VignettingEffect;->mWindowWidth:I

    iget v1, p0, Lcom/sec/android/effect/VignettingEffect;->mWindowHeight:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/effect/VignettingEffect;->getBitmapCenterCropRect(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;

    move-result-object v7

    const-string/jumbo v0, "VignettingEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyBlendedFilter(). WindoWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/effect/VignettingEffect;->mWindowWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " && WindowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/effect/VignettingEffect;->mWindowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-direct {v9}, Lcom/samsung/android/graphics/SemImageFilterSet;-><init>()V

    const/16 v0, 0x34

    invoke-static {v0}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    const/16 v1, 0x34

    invoke-static {v1}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    const/4 v1, 0x0

    invoke-direct {p0, v7, v1}, Lcom/sec/android/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v1

    const-string/jumbo v2, "VignettingEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gradientAreaRect() TOP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/sec/android/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v1

    const-string/jumbo v2, "VignettingEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extractedColor of top = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    sget v1, Lcom/sec/android/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x14

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sget v1, Lcom/sec/android/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v5, v2, v1

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/16 v4, 0x14

    const/16 v6, 0x14

    invoke-static {v1, v2, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    const/4 v1, 0x1

    invoke-direct {p0, v7, v1}, Lcom/sec/android/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v1

    const-string/jumbo v2, "VignettingEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gradientAreaRect() BOTTOM = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/sec/android/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v1

    const-string/jumbo v2, "VignettingEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extractedColor of bottom = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    sget v1, Lcom/sec/android/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x14

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    sget v6, Lcom/sec/android/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v5, 0x14

    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    invoke-virtual {v9, v0}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    invoke-virtual {v9, v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p2, v9}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    return-void
.end method

.method public resetBlendedFilter(Landroid/view/View;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "VignettingEffect"

    const-string/jumbo v1, "resetBlendedFilter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    return-void
.end method
