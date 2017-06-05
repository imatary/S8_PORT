.class Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;
.super Landroid/widget/ImageView;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutImageView"
.end annotation


# instance fields
.field private mBadgeCount:I

.field private mBoundsRect:Landroid/graphics/Rect;

.field private mDistanceRatio:D

.field private mIsPressed:Z

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2600()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeCountColor:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2700()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 12

    const/16 v10, 0x64

    const/4 v11, 0x0

    if-eqz p1, :cond_1

    if-ge p1, v10, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2600()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_0
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int v6, v5, v0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int v7, v3, v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int v4, v0, v6

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v2, v0, v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v8, v11, v1, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    if-ge p1, v10, :cond_3

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    :goto_1
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt v0, v4, :cond_0

    move v4, v0

    :cond_0
    if-lt v1, v2, :cond_4

    move v0, v1

    move v1, v3

    :goto_2
    add-int v2, v4, v6

    add-int/2addr v0, v7

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v11, v11, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3900()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    div-int/lit8 v0, v4, 0x2

    add-int/2addr v0, v5

    int-to-float v0, v0

    iget v2, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeSmall:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3800()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v10, Lcom/android/keyguard/R$integer;->badge_paddingX_small:I

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    sub-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    move v1, v0

    move v0, v2

    goto :goto_2
.end method

.method public getBadgeCount()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0xff

    const/4 v7, 0x2

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getPaddingTop()I

    move-result v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconTopToTopOffset:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2800()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v0, v3, 0x2

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconCenterXOffset:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$2900()I

    move-result v5

    add-int/2addr v0, v5

    add-int v5, v0, v4

    if-gt v5, v3, :cond_2

    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    add-int/2addr v4, v0

    sub-int v3, v4, v3

    sub-int/2addr v0, v3

    goto :goto_2

    :cond_3
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->sCoarseClipTable:Landroid/graphics/MaskFilter;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3000()Landroid/graphics/MaskFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mOuterGlowColor:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3200()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    cmpl-double v0, v0, v10

    if-nez v0, :cond_4

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3400()I

    move-result v1

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3500()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-direct {v2, v3, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v9, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3600()Landroid/graphics/Paint;

    move-result-object v2

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mTempOffset:[I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3700()[I

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    neg-int v3, v7

    add-int/2addr v3, v1

    neg-int v4, v7

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    sub-int v1, v5, v1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v9, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    :cond_4
    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_5

    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_3

    :cond_5
    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_6

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_3

    :cond_6
    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    cmpg-double v0, v0, v2

    if-gez v0, :cond_7

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    const-wide v4, 0x4055400000000000L    # 85.0

    mul-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    div-double/2addr v2, v4

    double-to-int v1, v2

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_3

    :cond_7
    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3300()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardShortcutView;->access$3100()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_3
.end method

.method public onPressed(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mIsPressed:Z

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->postInvalidate()V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    goto :goto_0
.end method

.method public setBadgeCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mBadgeCount:I

    return-void
.end method

.method public setDistanceRatio(D)V
    .locals 1

    iput-wide p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->mDistanceRatio:D

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;->postInvalidate()V

    return-void
.end method
