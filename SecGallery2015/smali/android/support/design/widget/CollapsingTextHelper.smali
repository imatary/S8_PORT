.class final Landroid/support/design/widget/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedTextColor:I

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTextSize:F

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFraction:F

.field private mExpandedTextColor:I

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mIsRtl:Z

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F

.field private mText:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/view/animation/Interpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

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

    const/16 v1, 0x10

    const/high16 v0, 0x41700000    # 15.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

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

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

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

.method private calculateBaseOffsets()V
    .locals 12

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v6, v9, v8, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    :goto_0
    iget v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    iget-boolean v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mIsRtl:Z

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    invoke-static {v9, v6}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v6, v0, 0x70

    sparse-switch v6, :sswitch_data_0

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float v2, v6, v9

    div-float v6, v2, v11

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    sub-float v3, v6, v9

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    :goto_2
    and-int/lit8 v6, v0, 0x7

    sparse-switch v6, :sswitch_data_1

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    :goto_3
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v5, v6, v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    :goto_4
    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    iget-boolean v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mIsRtl:Z

    if-eqz v6, :cond_3

    :goto_5
    invoke-static {v5, v7}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v5, v1, 0x70

    sparse-switch v5, :sswitch_data_2

    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float v2, v5, v6

    div-float v5, v2, v11

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float v3, v5, v6

    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    :goto_6
    and-int/lit8 v5, v1, 0x7

    sparse-switch v5, :sswitch_data_3

    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    :goto_7
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    return-void

    :cond_0
    move v4, v5

    goto/16 :goto_0

    :cond_1
    move v6, v8

    goto/16 :goto_1

    :sswitch_0
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    goto :goto_2

    :sswitch_1
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v6, v9

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    goto/16 :goto_2

    :sswitch_2
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    div-float v9, v4, v11

    sub-float/2addr v6, v9

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    goto/16 :goto_3

    :sswitch_3
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    goto/16 :goto_3

    :cond_2
    move v4, v5

    goto :goto_4

    :cond_3
    move v7, v8

    goto :goto_5

    :sswitch_4
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    goto :goto_6

    :sswitch_5
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    goto :goto_6

    :sswitch_6
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    div-float v6, v4, v11

    sub-float/2addr v5, v6

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    goto :goto_7

    :sswitch_7
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    goto :goto_7

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
    .end sparse-switch
.end method

.method private calculateCurrentOffsets()V
    .locals 4

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->interpolateBounds(F)V

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v0, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawX:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v0, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawY:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v0, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

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

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v1

    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_1
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
    .locals 9

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

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureAscent:F

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureDescent:F

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureDescent:F

    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureAscent:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

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

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method private interpolateBounds(F)V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
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

.method private static lerp(FFFLandroid/view/animation/Interpolator;)F
    .locals 1

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/AnimationUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

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

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v0, v6

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    iput v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    :goto_1
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    cmpl-float v6, v6, v1

    if-nez v6, :cond_1

    iget-boolean v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    if-eqz v6, :cond_a

    :cond_1
    move v3, v5

    :goto_2
    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    iput-boolean v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    :cond_2
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v6, v7, v0, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    iput-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    :cond_5
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Landroid/support/design/widget/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v6

    iput-boolean v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mIsRtl:Z

    :cond_6
    sget-boolean v6, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz v6, :cond_b

    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_b

    :goto_3
    iput-boolean v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mUseTexture:Z

    iget-boolean v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mUseTexture:Z

    if-eqz v4, :cond_7

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->ensureExpandedTexture()V

    :cond_7
    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    :cond_8
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v0, v6

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-static {p1, v6}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v6

    if-eqz v6, :cond_9

    iput v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    goto :goto_1

    :cond_9
    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    div-float v6, p1, v6

    iput v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    goto :goto_1

    :cond_a
    move v3, v4

    goto :goto_2

    :cond_b
    move v5, v4

    goto :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mDrawTitle:Z

    if-eqz v0, :cond_2

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawX:F

    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentDrawY:F

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mUseTexture:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    const/4 v9, 0x1

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz v9, :cond_4

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureAscent:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float v7, v0, v1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextureDescent:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mScale:F

    mul-float v8, v0, v1

    :goto_1
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
    if-eqz v9, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_3
    move v9, v2

    goto :goto_0

    :cond_4
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

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_2
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

.method getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method onBoundsChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mDrawTitle:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recalculate()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateBaseOffsets()V

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method setCollapsedBounds(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    :cond_0
    return-void
.end method

.method setCollapsedTextAppearance(I)V
    .locals 3

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

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method setCollapsedTextColor(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextColor:I

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setCollapsedTextGravity(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedBounds(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    :cond_0
    return-void
.end method

.method setExpandedTextColor(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextColor:I

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedTextGravity(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedTextSize(F)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

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

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

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

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_1
    return-void
.end method

.method setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_1
    return-void
.end method
