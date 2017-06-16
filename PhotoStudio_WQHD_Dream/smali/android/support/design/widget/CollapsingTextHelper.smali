.class final Landroid/support/design/widget/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final DEBUG_DRAW:Z

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedTextColor:I

.field private mCollapsedTextSize:F

.field private mCollapsedTextVerticalGravity:I

.field private mCollapsedTop:F

.field private mCurrentLeft:F

.field private mCurrentRight:F

.field private mCurrentTextSize:F

.field private mCurrentTop:F

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedFraction:F

.field private mExpandedTextColor:I

.field private mExpandedTextSize:F

.field private mExpandedTextVerticalGravity:I

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mExpandedTop:F

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F

.field private mText:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/view/animation/Interpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextWidth:F

.field private mTextureAscent:F

.field private mTextureDescent:F

.field private mTexturePaint:Landroid/graphics/Paint;

.field private mUseTexture:Z

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextVerticalGravity:I

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextVerticalGravity:I

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private static blendColors(IIF)I
    .locals 9

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v0, v5, v6

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v4, v5, v6

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v2, v5, v6

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float v1, v5, v6

    float-to-int v5, v0

    float-to-int v6, v4

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method private calculateBaselines()V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextVerticalGravity:I

    sparse-switch v2, :sswitch_data_0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float v0, v2, v3

    div-float v2, v0, v4

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float v1, v2, v3

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTop:F

    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextVerticalGravity:I

    sparse-switch v2, :sswitch_data_1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float v0, v2, v3

    div-float v2, v0, v4

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float v1, v2, v3

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTop:F

    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    iput v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureAscent:F

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iput v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureDescent:F

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    return-void

    :sswitch_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTop:F

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTop:F

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTop:F

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTop:F

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private calculateOffsets()V
    .locals 4

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v0, v3}, Landroid/support/design/widget/CollapsingTextHelper;->interpolate(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentLeft:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTop:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTop:F

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v0, v3}, Landroid/support/design/widget/CollapsingTextHelper;->interpolate(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTop:F

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v0, v3}, Landroid/support/design/widget/CollapsingTextHelper;->interpolate(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentRight:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v0, v3}, Landroid/support/design/widget/CollapsingTextHelper;->interpolate(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    invoke-static {v2, v3, v0}, Landroid/support/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

.method private clearTexture()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v1, v8

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextWidth:F

    if-gtz v8, :cond_2

    if-lez v7, :cond_0

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    int-to-float v5, v7

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_0
.end method

.method private static interpolate(FFFLandroid/view/animation/Interpolator;)F
    .locals 1

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/AnimationUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private static isClose(FF)Z
    .locals 2

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalculate()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateBaselines()V

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets()V

    :cond_0
    return-void
.end method

.method private setInterpolatedTextSize(F)V
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-static {p1, v6}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v0, v6

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    iput v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    :goto_1
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_1

    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    cmpl-float v6, v6, v1

    if-eqz v6, :cond_9

    move v3, v4

    :goto_2
    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    :cond_1
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    if-eqz v3, :cond_5

    :cond_2
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v6, v7, v0, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iput-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    :cond_4
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v5, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextWidth:F

    :cond_5
    sget-boolean v6, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz v6, :cond_a

    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_a

    :goto_3
    iput-boolean v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mUseTexture:Z

    iget-boolean v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mUseTexture:Z

    if-eqz v4, :cond_6

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->ensureExpandedTexture()V

    :cond_6
    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    :cond_7
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v0, v6

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-static {p1, v6}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v6

    if-eqz v6, :cond_8

    iput v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    goto :goto_1

    :cond_8
    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    div-float v6, p1, v6

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    goto :goto_1

    :cond_9
    move v3, v5

    goto :goto_2

    :cond_a
    move v4, v5

    goto :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v9, :cond_4

    move v10, v9

    :goto_0
    if-eqz v10, :cond_5

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentRight:F

    :goto_1
    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTop:F

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mUseTexture:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    :goto_2
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz v9, :cond_7

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureAscent:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float v7, v0, v1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureDescent:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float v8, v0, v1

    :goto_3
    if-eqz v9, :cond_0

    add-float/2addr v5, v7

    :cond_0
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    if-eqz v10, :cond_2

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextWidth:F

    sub-float/2addr v4, v0

    :cond_2
    if-eqz v9, :cond_8

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_4
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_4
    move v10, v2

    goto :goto_0

    :cond_5
    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentLeft:F

    goto :goto_1

    :cond_6
    move v9, v2

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float v7, v0, v1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float v8, v0, v1

    goto :goto_3

    :cond_8
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method getCollapsedTextColor()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    return v0
.end method

.method getCollapsedTextSize()F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    return v0
.end method

.method getExpandedTextColor()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    return v0
.end method

.method getExpandedTextSize()F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    return v0
.end method

.method getExpansionFraction()F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    return v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method setCollapsedBounds(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method setCollapsedTextAppearance(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method setCollapsedTextColor(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setCollapsedTextSize(F)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setCollapsedTextVerticalGravity(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x70

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextVerticalGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextVerticalGravity:I

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedBounds(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method setExpandedTextAppearance(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method setExpandedTextColor(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedTextSize(F)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedTextVerticalGravity(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x70

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextVerticalGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextVerticalGravity:I

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setExpansionFraction(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/MathUtils;->constrain(FFF)F

    move-result p1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets()V

    :cond_0
    return-void
.end method

.method setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method setText(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_1
    return-void
.end method

.method setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method
