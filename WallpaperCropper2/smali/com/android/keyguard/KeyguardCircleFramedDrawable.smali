.class Lcom/android/keyguard/KeyguardCircleFramedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Unknown"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private final mFrameColor:I

.field private mFramePath:Landroid/graphics/Path;

.field private mFrameRect:Landroid/graphics/RectF;

.field private final mFrameShadowColor:I

.field private final mHighlightColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mScale:F

.field private final mShadowRadius:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;

.field private final mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIFIFI)V
    .locals 8

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    iput p6, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    iput p3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameColor:I

    iput p5, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameShadowColor:I

    iput p4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    iput p7, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v4, v1, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v2, v5

    iget v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget v2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    iget v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-virtual {v2, v1, v6, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    iget v2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    sub-float v3, v0, v1

    sub-float/2addr v0, v1

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    iget v2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {v0, v1, v5, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPressed:Z

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPressed:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    iget v2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameShadowColor:I

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x54

    iget v2, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFramePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    goto :goto_1
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    return v0
.end method

.method public reset()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPressed:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mPressed:Z

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mScale:F

    return-void
.end method

.method public verifyParams(FIFIFI)Z
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mSize:I

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameColor:I

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mStrokeWidth:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mFrameShadowColor:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mShadowRadius:F

    cmpl-float v0, v0, p5

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->mHighlightColor:I

    if-ne v0, p6, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
