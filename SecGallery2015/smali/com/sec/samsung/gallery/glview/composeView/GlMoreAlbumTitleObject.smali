.class public Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlMoreAlbumTitleObject.java"


# instance fields
.field public mAlbumCount:I

.field private final mContext:Landroid/content/Context;

.field private mHeightViewRatio:F

.field private final mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field private mSplitWidth:I

.field private mTitleColor:I

.field private mTitleMarg:I

.field private mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mTitleText:Ljava/lang/String;

.field private mTitleTextSize:I

.field private mViewHeight:I

.field private mWidthViewRatio:F


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mAlbumCount:I

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->initialize()V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setVisibility(Z)V

    return-void
.end method

.method private getAlbumTitleXPos(I)F
    .locals 5

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    neg-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleMarg:I

    div-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mWidthViewRatio:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    int-to-float v2, v0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mWidthViewRatio:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    neg-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleMarg:I

    div-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mWidthViewRatio:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mNavigationPos:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    neg-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleMarg:I

    div-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mWidthViewRatio:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, v0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mWidthViewRatio:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    neg-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleMarg:I

    div-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mWidthViewRatio:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_1
.end method

.method private initialize()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->resetAttributes()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0262

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleText:Ljava/lang/String;

    return-void
.end method

.method private resetAttributes()V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleTextSize:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleTextSize:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b032b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0320

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mViewHeight:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mContext:Landroid/content/Context;

    const v1, 0x7f100212

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b032a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleMarg:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0326

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private setVisibleRange()V
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mWidthViewRatio:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mHeightViewRatio:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mViewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mHeightViewRatio:F

    mul-float v0, v2, v3

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mViewHeight:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setSize(FF)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->updateView()V

    return-void
.end method

.method private updateView()V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleTextSize:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v3, :cond_0

    move-object v1, v4

    :goto_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleText:Ljava/lang/String;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mSplitWidth:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleMarg:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleTextSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleColor:I

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FILandroid/graphics/Typeface;)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mWidthViewRatio:F

    mul-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mHeightViewRatio:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v4, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->getAlbumTitleXPos(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v2, v8, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRoll(F)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-object v1, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleText:Ljava/lang/String;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mSplitWidth:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mTitleMarg:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v3, v4, v5, v0}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public resetLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setVisibleRange()V

    return-void
.end method

.method public setLimitedTextWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mSplitWidth:I

    return-void
.end method
