.class public Lcom/android/keyguard/sec/effect/VignettingEffect;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static BOTTOM_DIM_ALPHA:I = 0x0

.field private static final BOTTOM_TO_TOP:I = 0x1

.field private static final DEFAULT_COLOR:I = 0x6e

.field private static final LIMITTED_VALUE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "VignettingEffect"

.field private static TOP_DIM_ALPHA:I

.field private static final TOP_TO_BOTTOM:I

.field private static VIGNETTING_BOTTOM_RATIO:F

.field private static VIGNETTING_TOP_RATIO:F

.field private static mDefaultColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x6e

    const/16 v0, 0x4d

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    const/16 v0, 0x33

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    const v0, 0x3def9db2    # 0.117f

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->mDefaultColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyBlendedFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    if-eqz p0, :cond_0

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-static {}, Lcom/android/keyguard/sec/effect/VignettingEffect;->init()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    invoke-static {v10, v0, p0}, Lcom/android/keyguard/sec/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    if-eqz v10, :cond_1

    invoke-static {p0, v10}, Lcom/android/keyguard/sec/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v6

    shr-int/lit8 v0, v6, 0x10

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_2

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget v5, Lcom/android/keyguard/sec/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v5, v7, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v7, 0x0

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v7, v11, v12, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    invoke-virtual {v8, v10, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x1

    invoke-static {v10, v0, p0}, Lcom/android/keyguard/sec/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    if-eqz v10, :cond_3

    invoke-static {p0, v10}, Lcom/android/keyguard/sec/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v6

    shr-int/lit8 v0, v6, 0x10

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_4

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v5, v7, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v7, Lcom/android/keyguard/sec/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v7, v11, v12, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    invoke-virtual {v8, v10, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p0

    :cond_0
    return-object p0

    :cond_1
    return-object p0

    :cond_2
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget v5, Lcom/android/keyguard/sec/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    const/16 v6, 0x6e

    const/16 v7, 0x6e

    const/16 v11, 0x6e

    invoke-static {v5, v6, v7, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x6e

    const/16 v11, 0x6e

    const/16 v12, 0x6e

    invoke-static {v6, v7, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_0

    :cond_3
    return-object p0

    :cond_4
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const/16 v6, 0x6e

    const/16 v7, 0x6e

    const/16 v11, 0x6e

    invoke-static {v5, v6, v7, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v6, Lcom/android/keyguard/sec/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    const/16 v7, 0x6e

    const/16 v11, 0x6e

    const/16 v12, 0x6e

    invoke-static {v6, v7, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1
.end method

.method public static applyBlendedFilter(Landroid/widget/ImageView;)V
    .locals 13

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/16 v11, 0x6e

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v10, Landroid/graphics/ImageFilterSet;

    invoke-direct {v10}, Landroid/graphics/ImageFilterSet;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    const/16 v0, 0x34

    invoke-static {v0}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    const/16 v3, 0x34

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-static {}, Lcom/android/keyguard/sec/effect/VignettingEffect;->init()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v3, v12, v7}, Lcom/android/keyguard/sec/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    if-eqz v3, :cond_2

    invoke-static {v7, v3}, Lcom/android/keyguard/sec/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v4

    const-string/jumbo v3, "VignettingEffect"

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

    sget v3, Lcom/android/keyguard/sec/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v3, v5, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sget v5, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

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
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-static {v2, v3, v7}, Lcom/android/keyguard/sec/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    if-eqz v2, :cond_4

    invoke-static {v7, v2}, Lcom/android/keyguard/sec/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v2

    const-string/jumbo v3, "VignettingEffect"

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

    sget v3, Lcom/android/keyguard/sec/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v7, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

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

    invoke-virtual {p0, v10}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    return-void

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    sget v3, Lcom/android/keyguard/sec/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    invoke-static {v3, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sget v4, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    sub-float v5, v2, v4

    invoke-static {v12, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto/16 :goto_0

    :cond_4
    return-void

    :cond_5
    sget v2, Lcom/android/keyguard/sec/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    invoke-static {v2, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v7, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    invoke-static {v12, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move-object v2, v9

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_1
.end method

.method private static calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v1

    sget v1, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iput v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    sget v3, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static convertToAlphaValue(I)I
    .locals 1

    mul-int/lit16 v0, p0, 0xff

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 34

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v14, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

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
    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v5

    move-wide v6, v8

    :goto_6
    move-object/from16 v0, p1

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

    move-object/from16 v0, p0

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

    sget v4, Lcom/android/keyguard/sec/effect/VignettingEffect;->mDefaultColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v4

    sget v4, Lcom/android/keyguard/sec/effect/VignettingEffect;->mDefaultColor:I

    return v4
.end method

.method public static init()V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTabAProject()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/VignettingEffect;->convertToAlphaValue(I)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    const/16 v0, 0x41

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/VignettingEffect;->convertToAlphaValue(I)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    const v0, 0x3de147ae    # 0.11f

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    const v0, 0x3e0f5c29    # 0.14f

    sput v0, Lcom/android/keyguard/sec/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    goto :goto_0
.end method

.method public static resetBlendedFilter(Landroid/widget/ImageView;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0x34

    if-eqz p0, :cond_0

    new-instance v2, Landroid/graphics/ImageFilterSet;

    invoke-direct {v2}, Landroid/graphics/ImageFilterSet;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static {v1}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-static {v1}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v1

    check-cast v1, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-virtual {v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    invoke-virtual {v1}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    invoke-virtual {v2, v0}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    invoke-virtual {v2, v1}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    return-void

    :cond_0
    return-void
.end method
