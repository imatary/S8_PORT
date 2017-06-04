.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;
.super Lcom/sec/android/gallery3d/glcore/GlObject;
.source "GlComposeScrollBar.java"


# static fields
.field private static final FADE_OUT_DELAY:I = 0x1f4

.field private static final FADE_OUT_DURATION:I = 0x1f4

.field private static final RES_ID_SCROLL_BAR:I = 0x1


# instance fields
.field mBottom:F

.field final mContext:Landroid/content/Context;

.field final mDefZ:F

.field final mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

.field mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

.field mFadeOutDelay:I

.field private mFocusBorderVisible:Z

.field mHeightSpace:F

.field mHeightViewRatio:F

.field private mMaxHeight:F

.field mPaddingRight:F

.field private mQuickScrollRatio:F

.field final mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

.field mThickness:F

.field private mTintColor:Ljava/lang/Integer;

.field mTop:F

.field mWidthSpace:F

.field mWidthViewRatio:F

.field final mXRatio:F


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mXRatio:F

    const/high16 v0, -0x3bb80000    # -800.0f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mDefZ:F

    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mMaxHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFocusBorderVisible:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mQuickScrollRatio:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mTintColor:Ljava/lang/Integer;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setSupportRtl(Z)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->initScrollBar()V

    return-void
.end method

.method private drawScrollBar(Lcom/sec/android/gallery3d/glcore/GlView;I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v1, :cond_2

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->getScrollBarDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mTintColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {p1, v1, v3}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getHeight()I

    move-result v2

    if-eq v2, p2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto :goto_0
.end method

.method private fadeOut(J)V
    .locals 3

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->fadeOut(JJ)V

    return-void
.end method

.method private getScrollBarDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010065

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mContext:Landroid/content/Context;

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method calcScrollRatio(FF)V
    .locals 2

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mQuickScrollRatio:F

    return-void

    :cond_0
    cmpl-float v1, p1, p2

    if-lez v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    div-float v0, p1, p2

    goto :goto_0
.end method

.method public clean()V
    .locals 0

    return-void
.end method

.method public disableQuickScroll()V
    .locals 0

    return-void
.end method

.method public enableQuickScroll()V
    .locals 0

    return-void
.end method

.method fadeOut()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->fadeOut(JJ)V

    return-void
.end method

.method fadeOut(JJ)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->getAlpha()F

    move-result v1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setParam(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->startAfter(J)V

    :cond_1
    return-void
.end method

.method getFocusBorderVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFocusBorderVisible:Z

    return v0
.end method

.method getHeight(FF)F
    .locals 8

    const/4 v6, 0x0

    sub-float v5, p2, p1

    const/high16 v1, 0x40000000    # 2.0f

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mHeightSpace:F

    mul-float v0, v1, v7

    const/high16 v4, 0x42200000    # 40.0f

    cmpl-float v7, v5, v0

    if-lez v7, :cond_0

    :goto_0
    return v4

    :cond_0
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mMaxHeight:F

    sub-float v7, v4, v7

    div-float v2, v7, v0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mMaxHeight:F

    cmpl-float v7, v5, v6

    if-lez v7, :cond_1

    mul-float v6, v2, v5

    add-float/2addr v6, v3

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method getQuickScrollRatio()F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mQuickScrollRatio:F

    return v0
.end method

.method getScrollRatio()F
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mHeightSpace:F

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->getHeight(Z)F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mTop:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mBottom:F

    sub-float v1, v2, v3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mHeightSpace:F

    div-float/2addr v2, v4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mTop:F

    sub-float/2addr v2, v3

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->getHeight(Z)F

    move-result v3

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    div-float v2, v0, v1

    return v2
.end method

.method public getTopMargin()F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mTop:F

    return v0
.end method

.method handleFlingProcess(FFZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->show()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->update(FFF)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->moveToLast()V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutDelay:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->fadeOut(J)V

    return-void
.end method

.method public hideNow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setAlpha(F)V

    return-void
.end method

.method initScrollBar()V
    .locals 1

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutDelay:I

    return-void
.end method

.method public isQuickScrollEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reset(FFFFFF)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mPaddingRight:F

    int-to-float v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setRightPadding(F)V

    :cond_2
    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mWidthViewRatio:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mHeightViewRatio:F

    iput p5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mTop:F

    iput p6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mBottom:F

    iput p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mWidthSpace:F

    iput p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mHeightSpace:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mHeightSpace:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mTop:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mBottom:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mMaxHeight:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setThickness()V

    return-void
.end method

.method setFocusBorderVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFocusBorderVisible:Z

    return-void
.end method

.method public setRightPadding(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mPaddingRight:F

    return-void
.end method

.method setThickness()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getWin2WorldRatio()F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewScrollbarWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mThickness:F

    return-void
.end method

.method public setTintColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mTintColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mTintColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mTintColor:Ljava/lang/Integer;

    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setAlpha(F)V

    return-void
.end method

.method public startTouchAnimation(Z)V
    .locals 0

    return-void
.end method

.method public update(FFF)V
    .locals 12

    sub-float v5, p3, p2

    invoke-virtual {p0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->getHeight(FF)F

    move-result v3

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mWidth:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mThickness:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x38d1b717    # 1.0E-4f

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_0

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mHeight:F

    sub-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x38d1b717    # 1.0E-4f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    :cond_0
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mThickness:F

    invoke-virtual {p0, v9, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setSize(FF)V

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mThickness:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mWidthViewRatio:F

    div-float/2addr v9, v10

    float-to-int v6, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mHeightViewRatio:F

    div-float v9, v3, v9

    float-to-int v4, v9

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setEmptyFill(Z)V

    new-instance v9, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v10, v10, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v9, v10, v6, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v9, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->drawScrollBar(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_1
    const/4 v9, 0x0

    cmpg-float v9, v5, v9

    if-gtz v9, :cond_2

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mHeightSpace:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mTop:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mBottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    sub-float/2addr v9, v0

    div-float v1, v9, v5

    neg-float v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v3, v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mBottom:F

    add-float/2addr v9, v10

    mul-float v10, p3, v1

    sub-float v2, v9, v10

    mul-float v9, v1, p1

    add-float v8, v9, v2

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mWidthSpace:F

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mWidthSpace:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->mPaddingRight:F

    sub-float v7, v9, v10

    const/high16 v9, -0x3bb80000    # -800.0f

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setPos(FFF)V

    goto :goto_0
.end method

.method public updateScrollTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
