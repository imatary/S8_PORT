.class public Ldmc/surface/uiShadow/LongShadowManager;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final TAG:Ljava/lang/String; = "LongShadowManager"


# instance fields
.field private mAlphaMask:Landroid/graphics/Bitmap;

.field private mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

.field private mAlphaMaskPaint:Landroid/graphics/Paint;

.field private mAlphaMaskRadius_DP:I

.field private mAlphaMaskRadius_PX:I

.field private mAnimationAngle:F

.field private mContext:Landroid/content/Context;

.field private mOuterBlurFilter:Landroid/graphics/BlurMaskFilter;

.field private mOuterBlurPaint:Landroid/graphics/Paint;

.field private mShadowAlpha:I

.field private mShadowAlphaPaint:Landroid/graphics/Paint;

.field private mShadowDepth:I

.field private mShadowDepthInteval:F

.field private mShadowEffectBitmap:[Landroid/graphics/Bitmap;

.field private mShadowEffectRect:[Landroid/graphics/Rect;

.field private mShadowImageCanvas:Landroid/graphics/Canvas;

.field private mShadowImageMap:Landroid/graphics/Bitmap;

.field private mShadowImageRect:Landroid/graphics/Rect;

.field private mShadowImageView:Landroid/widget/ImageView;

.field private mSlopeShadowDepth:I

.field private mSlopeShadowDepthAlpha:I

.field private mSplitTextBitmap:[Landroid/graphics/Bitmap;

.field private mSplitTextRect:[Landroid/graphics/Rect;

.field private mTextLength:I

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewBitmap:Landroid/graphics/Bitmap;

.field private mTextViewRect:Landroid/graphics/Rect;

.field private mbitResolution:I

.field private mbitResolutionF:F

.field private mdpShadowLength:I

.field private misNumeric:[Z

.field private mpxShadowLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;IILandroid/graphics/Bitmap;)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Ldmc/surface/uiShadow/LongShadowManager;->CreateVeiwCanvas(Landroid/widget/ImageView;)V

    if-eqz p5, :cond_3

    iput-object p5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMask:Landroid/graphics/Bitmap;

    :goto_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Ldmc/surface/uiShadow/LongShadowManager;->setSlopeShadowDepth(I)V

    iput p3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepth:I

    iput p4, p0, Ldmc/surface/uiShadow/LongShadowManager;->mdpShadowLength:I

    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mdpShadowLength:I

    invoke-static {p1, v0}, Ldmc/surface/uiShadow/Utilities;->getDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mpxShadowLength:I

    invoke-static {p1, v3}, Ldmc/surface/uiShadow/Utilities;->getDpToPixel(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepthInteval:F

    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepthInteval:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    iput v4, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepthInteval:F

    :cond_0
    const-string/jumbo v0, "LongShadowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ShadowDepth Interval "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepthInteval:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    iput v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolutionF:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const v1, 0x3dcccccd    # 0.1f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurFilter:Landroid/graphics/BlurMaskFilter;

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    return-void

    :cond_1
    const-string/jumbo v0, "LongShadowManager"

    const-string/jumbo v1, "Context NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v0, "LongShadowManager"

    const-string/jumbo v1, "imgView NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v0, "LongShadowManager"

    const-string/jumbo v1, "AlphaMask NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x32

    const/16 v1, 0x32

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMask:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method private CreateVeiwCanvas(Landroid/widget/ImageView;)V
    .locals 5

    iput-object p1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageView:Landroid/widget/ImageView;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageCanvas:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public UpdateImageViews(Landroid/widget/ImageView;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Ldmc/surface/uiShadow/LongShadowManager;->CreateVeiwCanvas(Landroid/widget/ImageView;)V

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v2

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ldmc/surface/uiShadow/LongShadowManager;->draw()V

    return-void
.end method

.method public UpdateShadowViews(Landroid/widget/TextView;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    move v0, v1

    :goto_0
    iget v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int/2addr v3, v4

    iget-object v4, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int/2addr v4, v5

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ldmc/surface/uiShadow/LongShadowManager;->viewToShadow(Landroid/widget/TextView;)V

    const-string/jumbo v0, "LongShadowManager"

    const-string/jumbo v2, "this TextView is different."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Ldmc/surface/uiShadow/LongShadowManager;->viewToShadow(Landroid/widget/TextView;)V

    return v8

    :cond_2
    invoke-virtual {p0}, Ldmc/surface/uiShadow/LongShadowManager;->draw()V

    return v8
.end method

.method public close()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageView:Landroid/widget/ImageView;

    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    :cond_0
    :goto_0
    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    :cond_1
    :goto_1
    move v0, v1

    :goto_2
    iget v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aput-object v3, v2, v0

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    :cond_2
    :goto_3
    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aput-object v3, v2, v0

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-nez v2, :cond_8

    :cond_3
    :goto_4
    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    :cond_4
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_7
    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    goto :goto_3

    :cond_8
    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    goto :goto_4

    :cond_9
    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    goto :goto_5

    :cond_a
    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    iput-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->misNumeric:[Z

    iput v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    return-void
.end method

.method public draw()V
    .locals 13

    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAnimationAngle:F

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepthInteval:F

    iget v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolutionF:F

    div-float/2addr v1, v2

    mul-float v2, v0, v1

    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAnimationAngle:F

    float-to-double v0, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    iget v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepthInteval:F

    iget v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolutionF:F

    div-float/2addr v1, v3

    mul-float v3, v0, v1

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->misNumeric:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v0, 0x1

    :goto_1
    iget v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSlopeShadowDepth:I

    if-gt v0, v5, :cond_2

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    iget v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSlopeShadowDepthAlpha:I

    mul-int/2addr v6, v0

    rsub-int v6, v6, 0x82

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v1

    int-to-float v6, v0

    mul-float/2addr v6, v2

    int-to-float v7, v0

    mul-float/2addr v7, v3

    iget-object v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v0, 0x1

    :goto_2
    iget v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepth:I

    if-gt v0, v5, :cond_1

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v1

    int-to-float v6, v0

    mul-float/2addr v6, v2

    int-to-float v7, v0

    mul-float/2addr v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskRadius_PX:I

    int-to-float v0, v0

    iget v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolutionF:F

    div-float/2addr v0, v5

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMask:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMask:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMask:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/RectF;

    neg-float v8, v0

    neg-float v9, v0

    iget-object v10, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3f7f1411    # 0.99639994f

    mul-float/2addr v10, v11

    iget-object v11, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v11, v11, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3e90624e    # 0.282f

    mul-float/2addr v11, v12

    add-float/2addr v0, v11

    invoke-direct {v7, v8, v9, v10, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v1

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v7, v7, v1

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    iget v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlpha:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v1

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v7, v7, v1

    iget-object v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setAngle(F)V
    .locals 0

    iput p1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAnimationAngle:F

    return-void
.end method

.method public setShadowAlpha(I)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_1

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlpha:I

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    iget v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_1
    const/16 v1, 0xff

    if-gt p1, v1, :cond_0

    goto :goto_0
.end method

.method public setShadowAlphaRadius(I)V
    .locals 2

    iput p1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskRadius_DP:I

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mContext:Landroid/content/Context;

    iget v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskRadius_DP:I

    invoke-static {v0, v1}, Ldmc/surface/uiShadow/Utilities;->getDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskRadius_PX:I

    return-void
.end method

.method public setShadowEdgeAlpha(I)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_1

    :cond_0
    move p1, v0

    :goto_0
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_1
    const/16 v1, 0xff

    if-gt p1, v1, :cond_0

    goto :goto_0
.end method

.method public setSlopeShadowDepth(I)V
    .locals 2

    iput p1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSlopeShadowDepth:I

    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSlopeShadowDepth:I

    const/16 v1, 0x82

    div-int v0, v1, v0

    iput v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSlopeShadowDepthAlpha:I

    return-void
.end method

.method public viewToShadow(Landroid/widget/TextView;)V
    .locals 13

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "LongShadowManager"

    const-string/jumbo v1, " width and height must be > 0 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-nez v1, :cond_7

    :cond_3
    :goto_2
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-nez v1, :cond_8

    :cond_4
    :goto_3
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-nez v1, :cond_9

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_2

    :cond_8
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_3

    :cond_9
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->misNumeric:[Z

    iput-object p1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_b

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v1, v2

    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aget v2, v1, v2

    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string/jumbo v0, "LongShadowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "At ["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "], TextView["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "], Bitmap["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "], Canvas["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v4, v0, [F

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v0, v2, v5, v6, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v0, v2, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getGravity()I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_c

    :goto_5
    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    const/4 v1, 0x0

    move v12, v1

    move v1, v2

    move v2, v0

    move v0, v12

    :goto_6
    iget v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-ge v0, v5, :cond_d

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    float-to-int v7, v2

    const/4 v8, 0x0

    aget v9, v4, v0

    add-float/2addr v9, v2

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v5, v0

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int/2addr v5, v6

    iget-object v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int/2addr v6, v7

    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v7, v0

    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v0

    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aget-object v8, v8, v0

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    invoke-virtual {v3, v7, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    aget v5, v4, v0

    add-float/2addr v2, v5

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    float-to-int v7, v1

    iget-object v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    aget v9, v4, v0

    add-float/2addr v9, v1

    iget v10, p0, Ldmc/surface/uiShadow/LongShadowManager;->mpxShadowLength:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    iget-object v10, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Ldmc/surface/uiShadow/LongShadowManager;->mpxShadowLength:I

    div-int/lit8 v11, v11, 0x8

    add-int/2addr v10, v11

    iget-object v11, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v5, v0

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    iget-object v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int/2addr v6, v7

    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int/2addr v7, v8

    sget-object v8, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    iget-object v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int/2addr v6, v7

    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int/2addr v7, v8

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v5, v0

    aget v5, v4, v0

    add-float/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    const-string/jumbo v0, "LongShadowManager"

    const-string/jumbo v1, "this TextView is blank."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    goto/16 :goto_5

    :cond_d
    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v0, v0, [Z

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->misNumeric:[Z

    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_7
    iget v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->misNumeric:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ge v2, v3, :cond_f

    :cond_e
    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->misNumeric:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    const-string/jumbo v2, "TextView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CharAt(i) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_e

    goto :goto_8

    :cond_10
    invoke-virtual {p0}, Ldmc/surface/uiShadow/LongShadowManager;->draw()V

    return-void
.end method
