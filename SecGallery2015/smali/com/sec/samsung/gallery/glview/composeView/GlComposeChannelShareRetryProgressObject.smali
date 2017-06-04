.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;
.source "GlComposeChannelShareRetryProgressObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;
    }
.end annotation


# static fields
.field private static final RES_ID_PROGRESS_BAR:I = 0x2

.field private static final RES_ID_SHARE_RETRY_PROGRESS_BG:I = 0x1


# instance fields
.field private isDownloadNeeded:Z

.field private mActionbarHeight:F

.field private final mContext:Landroid/content/Context;

.field private final mExpanded:Z

.field private mExtraHeight:F

.field private mGlShareRetryAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;

.field private mGlShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;

.field private mHeightViewRatio:F

.field private mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private final mResources:Landroid/content/res/Resources;

.field private mShareProgressObjHeight:F

.field private mShareProgressObjWidth:F

.field private final mShareRetryAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private final mShrinkAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mSizeX:I

.field private mWidthViewRatio:F


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;)V
    .locals 2

    const/4 v1, 0x0

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareProgressBar;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShrinkAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareRetryAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;->mExpanded:Z
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mExpanded:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setVisibility(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;Lcom/sec/android/gallery3d/glcore/GlView;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->updateProgress(Lcom/sec/android/gallery3d/glcore/GlView;F)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->isDownloadNeeded:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->startShareRetryProgressAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;Lcom/sec/android/gallery3d/glcore/GlView;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->updateShareRetryProgress(Lcom/sec/android/gallery3d/glcore/GlView;F)V

    return-void
.end method

.method private drawShareRetryProgressBarBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 7

    const/4 v6, 0x1

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    const v5, 0x7f02038d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b07f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v4, 0x2

    invoke-virtual {v2, v6, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p1, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-object p1
.end method

.method private getActionbarHeight(FZ)F
    .locals 2

    if-eqz p2, :cond_0

    const v0, 0x7f0b0039

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    return v1

    :cond_0
    const v0, 0x7f0b0038

    goto :goto_0
.end method

.method private getCoverViewScroll(F)F
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mExtraHeight:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mExpanded:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mExtraHeight:F

    add-float/2addr v1, v2

    sub-float v0, v1, p1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mActionbarHeight:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mExtraHeight:F

    add-float/2addr v1, v2

    neg-float v0, v1

    goto :goto_0
.end method

.method private resetAttributes(Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b07f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mWidthViewRatio:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mHeightViewRatio:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mHeightViewRatio:F

    invoke-direct {p0, v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->getActionbarHeight(FZ)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mActionbarHeight:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjWidth:F

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjHeight:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->getExtraComponentsHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mExtraHeight:F

    return-void
.end method

.method private resetProgressBarObj()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjHeight:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mExtraHeight:F

    sub-float v0, v1, v2

    invoke-virtual {p0, v3, v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setPos(FFF)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjHeight:F

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setSize(FF)V

    return-void
.end method

.method private setRetryProgressBar(Lcom/sec/android/gallery3d/glcore/GlView;F)V
    .locals 6

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b07f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    const v4, 0x7f02038e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    float-to-int v3, p2

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {p1, v2, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    float-to-int v3, p2

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    goto :goto_0
.end method

.method private startShareRetryProgressAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShareRetryAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;

    invoke-direct {v0, p0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;Lcom/sec/android/gallery3d/glcore/GlObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShareRetryAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShareRetryAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShareRetryAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v2, 0x68

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShareRetryAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareRetryAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShareRetryAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;->start()V

    return-void
.end method

.method private startShrinkProgressAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v2, 0x68

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShrinkAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;->start()V

    return-void
.end method

.method private updateProgress(Lcom/sec/android/gallery3d/glcore/GlView;F)V
    .locals 7

    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    const v5, 0x7f02038e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mSizeX:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p2

    mul-float/2addr v4, v5

    float-to-int v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b07f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    invoke-virtual {v2, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    return-void
.end method

.method private updateShareRetryProgress(Lcom/sec/android/gallery3d/glcore/GlView;F)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    const v6, 0x7f02038e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v4, v5, 0x3

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b07f7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p2

    neg-int v6, v4

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, p2

    add-float/2addr v5, v6

    float-to-int v0, v5

    if-nez v3, :cond_0

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3, v8}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v8}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {v3, v0, v7, v7, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setMargin(IIII)V

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    return-void
.end method


# virtual methods
.method checkDownloadRequired()V
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mSizeX:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->isDownloadNeeded:Z

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mSizeX:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->removeShareRetryProgress()V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->startShrinkProgressAnimation()V

    goto :goto_1
.end method

.method createShareRetryProgress()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-boolean v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWideMode:Z

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->resetAttributes(Z)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjWidth:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mWidthViewRatio:F

    div-float/2addr v4, v7

    float-to-int v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b07f7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, v4, v3, v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    new-instance v4, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->drawShareRetryProgressBarBG(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v4, v4

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mHeightViewRatio:F

    mul-float/2addr v4, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjHeight:F

    sub-float/2addr v4, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mExtraHeight:F

    sub-float v1, v4, v7

    invoke-virtual {p0, v8, v1, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setPos(FFF)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjWidth:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjHeight:F

    invoke-virtual {p0, v4, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setSize(FF)V

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setUseTouchEvent(Z)V

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setVisibility(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v4, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setRetryProgressBar(Lcom/sec/android/gallery3d/glcore/GlView;F)V

    return-void

    :cond_0
    move v4, v6

    goto :goto_0
.end method

.method removeShareRetryProgress()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShrinkAnimation;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShareRetryAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShareRetryAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShareRetryAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mGlShareRetryAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject$GlShareRetryAnimation;

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->removeAllChild()V

    return-void
.end method

.method public resetLayout(FZ)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->resetAttributes(Z)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjWidth:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mShareProgressObjHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setSize(FF)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setVisibleRange(F)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->resetProgressBarObj()V

    return-void
.end method

.method public setVisibleRange(F)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->getCoverViewScroll(F)F

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v1, v2, v0

    invoke-virtual {p0, v4, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setPos(FFF)V

    return-void
.end method

.method updateProgressSize(I)V
    .locals 7

    const/4 v6, 0x2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    const v5, 0x7f02038e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-int/lit8 v3, p1, 0x3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    if-le v3, v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    :cond_0
    :goto_0
    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mSizeX:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b07f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v4, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    invoke-virtual {v2, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mSizeX:I

    invoke-virtual {v2, v4, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->mProgressBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelShareRetryProgressObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void

    :cond_2
    if-gtz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method
