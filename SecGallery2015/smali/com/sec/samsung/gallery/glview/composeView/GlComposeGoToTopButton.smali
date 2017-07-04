.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeGoToTopButton.java"


# static fields
.field private static final FADE_IN_OUT_TIME:I = 0x14d

.field private static final FADE_OUT_DELAY:I = 0x9c4

.field private static final MSG_START_DELAY:I = 0x1

.field private static final RES_ID_BUTTON_BG:I = 0x1


# instance fields
.field private mBottomGLMargin:F

.field private final mButtonBGView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mButtonGLSize:F

.field private mButtonPixelSize:I

.field private final mContext:Landroid/content/Context;

.field private final mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

.field private mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

.field private mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

.field private mGoToTopAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;

.field private final mHandler:Landroid/os/Handler;

.field private mHeightViewRatio:F

.field private mWidthViewRatio:F


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonBGView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mGoToTopAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->resetLayout()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->initMoveListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->initGenericMotionListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->handleMessageOnUiThread(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonBGView:Lcom/sec/android/gallery3d/glcore/GlView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->fadeOut()V

    return-void
.end method

.method private drawScrollBar(Lcom/sec/android/gallery3d/glcore/GlView;II)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;

    const v3, 0x7f020219

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {p1, v0, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    return-void
.end method

.method private fadeIn()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->getAlpha()F

    move-result v1

    invoke-direct {v0, p0, v1, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setParam(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->start()V

    :cond_2
    return-void
.end method

.method private fadeOut()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->getAlpha()F

    move-result v1

    invoke-direct {v0, p0, v1, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setParam(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->start()V

    :cond_2
    return-void
.end method

.method private handleMessageOnUiThread(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$4;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initGenericMotionListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;)V

    return-object v0
.end method

.method private initMoveListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;)V

    return-object v0
.end method

.method private resetAttributes()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getGoToTopButtonSize()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonPixelSize:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonPixelSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mWidthViewRatio:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonGLSize:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getGoToTopButtonMarginBottom()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mBottomGLMargin:F

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetButton()V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonGLSize:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonGLSize:F

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setSize(FF)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setEmptyFill(Z)V

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonPixelSize:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonPixelSize:I

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonBGView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonPixelSize:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonPixelSize:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->drawScrollBar(Lcom/sec/android/gallery3d/glcore/GlView;II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonBGView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    div-float/2addr v1, v5

    neg-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mButtonGLSize:F

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mBottomGLMargin:F

    add-float v0, v1, v2

    const/4 v1, 0x0

    const/high16 v2, -0x3bb80000    # -800.0f

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSupportExpand:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->resetXPositionForSplitLayout(Z)V

    :cond_0
    return-void
.end method

.method private show()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->moveToLast()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->fadeIn()V

    :cond_2
    return-void
.end method


# virtual methods
.method handleFlingProcess(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->hide(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->show()V

    goto :goto_0
.end method

.method public hide(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->fadeOut()V

    goto :goto_0
.end method

.method public hideNow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setAlpha(F)V

    return-void
.end method

.method processGoToTopButton(Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;F)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1022"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mGoToTopAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;

    if-nez v0, :cond_1

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mGoToTopAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mGoToTopAnim:Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->startGoToTop(F)V

    return-void
.end method

.method public resetLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mWidthViewRatio:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mHeightViewRatio:F

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->resetAttributes()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->resetButton()V

    return-void
.end method

.method resetXPositionForSplitLayout(Z)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-boolean v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWideMode:Z

    if-eqz v2, :cond_0

    sget v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->getZ()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->setPos(FFF)V

    return-void

    :cond_0
    sget v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_PORT:F

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    mul-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, v2, v3

    goto :goto_1
.end method
