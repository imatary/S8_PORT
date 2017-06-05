.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;
.super Landroid/widget/FrameLayout;
.source "Unknown"


# static fields
.field private static BOTTOM_DIM_ALPHA:I = 0x0

.field private static final BOTTOM_TO_TOP:I = 0x1

.field private static final DEFAULT_COLOR:I = 0x6e

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewVignetting"

.field private static TOP_DIM_ALPHA:I

.field private static final TOP_TO_BOTTOM:I

.field private static VIGNETTING_BOTTOM_RATIO:F

.field private static VIGNETTING_TOP_RATIO:F


# instance fields
.field private final LIMITTED_VALUE:I

.field private mDefaultColor:I

.field private mFilterImageView:Landroid/widget/ImageView;

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4d

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->TOP_DIM_ALPHA:I

    const/16 v0, 0x33

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->BOTTOM_DIM_ALPHA:I

    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    const v0, 0x3def9db2    # 0.117f

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x6e

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->LIMITTED_VALUE:I

    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mDefaultColor:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowWidth:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowHeight:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowWidth:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowHeight:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->init()V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->addView(Landroid/view/View;)V

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

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

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

    const-string/jumbo v0, "KeyguardEffectViewVignetting"

    const-string/jumbo v1, "getCenterCropRect()"

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

    const-string/jumbo v4, "KeyguardEffectViewVignetting"

    const-string/jumbo v5, "left and rigth are cropped"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v6, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v4, "KeyguardEffectViewVignetting"

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
    .locals 34

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v14, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, v28

    if-gt v0, v4, :cond_7

    move/from16 v0, v28

    int-to-float v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    :goto_0
    if-lez v4, :cond_8

    :goto_1
    const/4 v5, 0x0

    move/from16 v27, v5

    :goto_2
    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_9

    div-long v4, v12, v18

    long-to-int v4, v4

    div-long v6, v16, v18

    long-to-int v5, v6

    div-long v6, v20, v18

    long-to-int v6, v6

    int-to-long v12, v4

    cmp-long v7, v12, v8

    if-gtz v7, :cond_16

    const/4 v7, 0x1

    :goto_3
    if-nez v7, :cond_1

    int-to-long v12, v4

    sub-long v8, v12, v8

    long-to-float v7, v8

    int-to-float v8, v4

    div-float/2addr v7, v8

    const/high16 v8, 0x3e800000    # 0.25f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_0

    const/high16 v7, 0x3e800000    # 0.25f

    :cond_0
    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_1

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    int-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    :cond_1
    int-to-long v8, v5

    cmp-long v7, v8, v10

    if-gtz v7, :cond_17

    const/4 v7, 0x1

    :goto_4
    if-nez v7, :cond_3

    int-to-long v8, v5

    sub-long/2addr v8, v10

    long-to-float v7, v8

    int-to-float v8, v5

    div-float/2addr v7, v8

    const/high16 v8, 0x3e800000    # 0.25f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    const/high16 v7, 0x3e800000    # 0.25f

    :cond_2
    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    :cond_3
    int-to-long v8, v6

    cmp-long v7, v8, v14

    if-gtz v7, :cond_18

    const/4 v7, 0x1

    :goto_5
    if-nez v7, :cond_5

    int-to-long v8, v6

    sub-long/2addr v8, v14

    long-to-float v7, v8

    int-to-float v8, v6

    div-float/2addr v7, v8

    const/high16 v8, 0x3e800000    # 0.25f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_4

    const/high16 v7, 0x3e800000    # 0.25f

    :cond_4
    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_5

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    :cond_5
    const/16 v7, 0xff

    invoke-static {v7, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    const/16 v8, 0xc8

    if-gt v4, v8, :cond_19

    :cond_6
    return v7

    :cond_7
    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v5

    move-wide v6, v8

    :goto_6
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v26

    if-lt v0, v5, :cond_a

    add-int v5, v27, v4

    move/from16 v27, v5

    move-wide v8, v6

    goto/16 :goto_2

    :cond_a
    if-nez v27, :cond_c

    :cond_b
    move-wide v8, v6

    move-wide v6, v14

    move-wide/from16 v14, v20

    move-wide/from16 v32, v18

    move-wide/from16 v18, v12

    move-wide/from16 v12, v32

    :goto_7
    add-int v5, v26, v4

    move/from16 v26, v5

    move-wide/from16 v20, v14

    move-wide v14, v6

    move-wide v6, v8

    move-wide/from16 v32, v12

    move-wide/from16 v12, v18

    move-wide/from16 v18, v32

    goto :goto_6

    :cond_c
    if-eqz v26, :cond_b

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-long v8, v8

    add-long v24, v12, v8

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-long v12, v12

    add-long v22, v16, v12

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v20, v20, v16

    const-wide/16 v30, 0x1

    add-long v18, v18, v30

    cmp-long v5, v6, v8

    if-lez v5, :cond_11

    const/4 v5, 0x1

    :goto_8
    if-nez v5, :cond_d

    const-wide/16 v30, 0x0

    cmp-long v5, v6, v30

    if-nez v5, :cond_e

    :cond_d
    move-wide v6, v8

    :cond_e
    cmp-long v5, v10, v12

    if-lez v5, :cond_12

    const/4 v5, 0x1

    :goto_9
    if-nez v5, :cond_f

    const-wide/16 v8, 0x0

    cmp-long v5, v10, v8

    if-nez v5, :cond_13

    :cond_f
    move-wide v8, v12

    :goto_a
    cmp-long v5, v14, v16

    if-lez v5, :cond_14

    const/4 v5, 0x1

    :goto_b
    if-nez v5, :cond_10

    const-wide/16 v10, 0x0

    cmp-long v5, v14, v10

    if-nez v5, :cond_15

    :cond_10
    move-wide v10, v8

    move-wide/from16 v12, v18

    move-wide/from16 v14, v20

    move-wide v8, v6

    move-wide/from16 v18, v24

    move-wide/from16 v6, v16

    move-wide/from16 v16, v22

    goto :goto_7

    :cond_11
    const/4 v5, 0x0

    goto :goto_8

    :cond_12
    const/4 v5, 0x0

    goto :goto_9

    :cond_13
    move-wide v8, v10

    goto :goto_a

    :cond_14
    const/4 v5, 0x0

    goto :goto_b

    :cond_15
    move-wide v10, v8

    move-wide/from16 v12, v18

    move-wide/from16 v16, v22

    move-wide v8, v6

    move-wide/from16 v18, v24

    move-wide v6, v14

    move-wide/from16 v14, v20

    goto :goto_7

    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_19
    const/16 v4, 0xc8

    if-le v5, v4, :cond_6

    const/16 v4, 0xc8

    if-le v6, v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mDefaultColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mDefaultColor:I

    return v4
.end method

.method private init()V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->convertToAlphaValue(I)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->TOP_DIM_ALPHA:I

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->convertToAlphaValue(I)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->BOTTOM_DIM_ALPHA:I

    const v0, 0x3de147ae    # 0.11f

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    const v0, 0x3e0f5c29    # 0.14f

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    goto :goto_0
.end method


# virtual methods
.method public applyBlendedFilter(Landroid/graphics/Bitmap;)V
    .locals 13

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/16 v11, 0x6e

    const-string/jumbo v0, "KeyguardEffectViewVignetting"

    const-string/jumbo v3, "applyBlendedFilter()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowWidth:I

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowHeight:I

    invoke-direct {p0, p1, v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->getBitmapCenterCropRect(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;

    move-result-object v7

    new-instance v10, Landroid/graphics/ImageFilterSet;

    invoke-direct {v10}, Landroid/graphics/ImageFilterSet;-><init>()V

    const/16 v0, 0x34

    invoke-static {v0}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    const/16 v3, 0x34

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-direct {p0, v7, v12}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v4

    const-string/jumbo v3, "KeyguardEffectViewVignetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "extractedColor of top = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    shr-int/lit8 v3, v4, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xc8

    if-gt v3, v5, :cond_3

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->TOP_DIM_ALPHA:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v3, v5, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sget v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    sub-float v5, v2, v5

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v12, v6, v8, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v7, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v2

    const-string/jumbo v3, "KeyguardEffectViewVignetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "extractedColor of bottom = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_5

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->BOTTOM_DIM_ALPHA:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v12, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move-object v2, v9

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    :goto_1
    invoke-virtual {v10, v0}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    invoke-virtual {v10, v9}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    return-void

    :cond_2
    return-void

    :cond_3
    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->TOP_DIM_ALPHA:I

    invoke-static {v3, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sget v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    sub-float v5, v2, v4

    invoke-static {v12, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->BOTTOM_DIM_ALPHA:I

    invoke-static {v2, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    invoke-static {v12, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move-object v2, v9

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_1
.end method

.method public resetBlendedFilter()V
    .locals 4

    const/16 v3, 0x34

    const-string/jumbo v0, "KeyguardEffectViewVignetting"

    const-string/jumbo v1, "resetBlendedFilter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/ImageFilterSet;

    invoke-direct {v2}, Landroid/graphics/ImageFilterSet;-><init>()V

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v1

    check-cast v1, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-virtual {v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    invoke-virtual {v1}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    invoke-virtual {v2, v0}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    invoke-virtual {v2, v1}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    return-void

    :cond_0
    return-void
.end method
