.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;
.source "GlComposeFastScrollBar.java"


# static fields
.field private static final BAR_FADE_IN_OUT_TIME:I = 0x14d

.field private static final CANVAS_LOCATION_POPUP:I = 0x1

.field private static final CANVAS_NORMAL_POPUP:I = 0x0

.field private static final CANVAS_SIZE:I = 0x2

.field private static final FADE_OUT_DELAY:I = 0x9c4

.field private static final IS_NOS:Z

.field private static final POPUP_FADE_IN_OUT_TIME:I = 0xa7


# instance fields
.field private mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

.field private mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

.field private mHasLocation:Z

.field private mLocationPopupCanvasH:I

.field private mPopupFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

.field private mPopupFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

.field private mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field private final mUsePopup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->IS_NOS:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->setSupportRtl(Z)V

    iget-boolean v0, p3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseFastScrollPopup:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mUsePopup:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->initScrollPopup()V

    return-void
.end method

.method private fadeIn()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setParam(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->start()V

    :cond_2
    return-void
.end method

.method private fadeInPopup()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setParam(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->start()V

    :cond_2
    return-void
.end method

.method private fadeOutPopup()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setParam(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPopupFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->start()V

    :cond_2
    return-void
.end method

.method private hideAll()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method private initScrollPopup()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mUsePopup:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSupportRtl(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->initGenericMotionListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    :cond_0
    return-void
.end method

.method private resetScrollPopupCanvasList()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mUsePopup:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->clean()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasH:I

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v0, v0, v6

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mLocationPopupCanvasH:I

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v0, v0, v5

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    :cond_0
    return-void
.end method

.method private selectPopupCanvas(I)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mUsePopup:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->resetScrollPopupCanvasList()V

    :cond_2
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v1, v1, v3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObjW:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObjH:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v1, v1, v4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObjW:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mLocationPopupCanvasH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_1
.end method


# virtual methods
.method public clean()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public disableQuickScroll()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->setQuickScrollEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mGroupTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mGroupLocation:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->forceUpdateScrollTitle(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method drawScrollBar(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->getScrollBarDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    sget-boolean v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->IS_NOS:Z

    if-eqz v3, :cond_1

    const v3, 0x7f100111

    :goto_0
    invoke-static {v4, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {p1, v2, v5}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_0
    return-void

    :cond_1
    const v3, 0x7f100112

    goto :goto_0
.end method

.method drawScrollPopup(Lcom/sec/android/gallery3d/glcore/GlView;Z)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x0

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHasLocation:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->selectPopupCanvas(I)V

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mQuickScrollFontSize:F

    invoke-static {v5}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mGroupTitle:Ljava/lang/String;

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasW:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mQuickScrollPopupPadding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v5, v10, v7, v1}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0200e5

    invoke-virtual {v5, v7, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->IS_NOS:Z

    if-eqz v5, :cond_3

    const/16 v5, 0xcc

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    :goto_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mQuickScrollFontSize:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mTextColor:I

    invoke-static {v4, v5, v7}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;

    move-result-object v3

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mQuickScrollFontSize:F

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setTextSize(F)V

    invoke-virtual {v3, v9, v9}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setAlign(II)V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v6, v5, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setMargin(IIII)V

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    invoke-virtual {p1, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_2
    const/4 v5, 0x3

    invoke-virtual {v2, v5, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mQuickScrollPopupPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHasLocation:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mLocationPopupCanvasH:I

    :goto_3
    invoke-virtual {v2, v6, v5}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    invoke-virtual {p0, v2, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->drawBorder(Lcom/sec/android/gallery3d/glcore/GlView;Z)V

    :cond_1
    return-void

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    const/16 v5, 0xcb

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v9}, Lcom/sec/android/gallery3d/glcore/GlImageView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setText(Ljava/lang/String;)V

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mQuickScrollFontSize:F

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/glcore/GlNewLineTextView;->setTextSize(F)V

    goto :goto_2

    :cond_5
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasH:I

    goto :goto_3
.end method

.method public enableQuickScroll()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->setQuickScrollEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->resetScrollPopup()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mUsePopup:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->fadeInPopup()V

    :cond_2
    return-void
.end method

.method fadeOut()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->isQuickScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->disableQuickScroll()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->setQuickScrollEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setParam(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->start()V

    :cond_3
    return-void
.end method

.method forceUpdateScrollTitle(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mGroupTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mGroupTitle:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mGroupLocation:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_4

    const-string/jumbo v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mGroupLocation:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHasLocation:Z

    const-string/jumbo v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-le v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mGroupTitle:Ljava/lang/String;

    :goto_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mUsePopup:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->isQuickScrollEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->drawScrollPopup(Lcom/sec/android/gallery3d/glcore/GlView;Z)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mGroupTitle:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mGroupLocation:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHasLocation:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mGroupTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method getScrollBarDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mUsePopup:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->fadeOutPopup()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->fadeOut()V

    goto :goto_0
.end method

.method public hideNow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->hideAll()V

    return-void
.end method

.method protected initScrollBar()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$QuickScrollBarObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$QuickScrollBarObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSupportRtl(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->initMoveListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->initGenericMotionListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    const/16 v0, 0x9c4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mFadeOutDelay:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->moveToLast()V

    return-void
.end method

.method protected resetQuickScroll(FFFF)V
    .locals 8

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b0351

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScrollBarWidth()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->getScrollBarDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    mul-int/lit8 v6, v3, 0x2

    add-int v0, v4, v6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b02fc

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-boolean v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWideMode:Z

    if-eqz v4, :cond_1

    mul-float v4, v5, p3

    div-float/2addr v4, p4

    :goto_1
    div-float v4, p3, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mObjW:F

    int-to-float v4, v0

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mObjH:F

    int-to-float v4, v0

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObjH:F

    int-to-float v4, v1

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObjW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mObjW:F

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObjW:F

    int-to-float v4, v2

    mul-float/2addr v4, p2

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObjH:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mObjW:F

    div-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mObjH:F

    div-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mCanvasH:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObjH:F

    div-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarCanvasH:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObjW:F

    div-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObjW:F

    div-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasW:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObjH:F

    div-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupCanvasH:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b02f9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollEndMargin:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b02ff

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupRightMarginPixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupRightMarginPixel:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupRightMargin:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHeightSpace:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mTop:F

    sub-float/2addr v4, v5

    int-to-float v5, v3

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHeightViewRatio:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mUpperLimit:F

    new-instance v4, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mCanvasW:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mCanvasH:I

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    const v5, 0x7f1001b9

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mTextColor:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b02fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mQuickScrollFontSize:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b02fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mQuickScrollPopupPadding:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->resetScrollBar()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->resetScrollPopup()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b02fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mLocationPopupCanvasH:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->resetScrollPopupCanvasList()V

    goto/16 :goto_0

    :cond_1
    move v4, v5

    goto/16 :goto_1
.end method

.method resetScrollBar()V
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollEndMargin:F

    neg-float v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->drawScrollBar(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObjW:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObjH:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    new-instance v2, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarCanvasW:I

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarCanvasH:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v0, v6, v6}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->moveToLast()V

    goto :goto_0
.end method

.method resetScrollPopup()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mUsePopup:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->drawScrollPopup(Lcom/sec/android/gallery3d/glcore/GlView;Z)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObjW:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mWidth:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupRightMargin:F

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v0, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    goto :goto_0
.end method

.method public setFocusBorderVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->drawScrollBar(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mUsePopup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->drawScrollPopup(Lcom/sec/android/gallery3d/glcore/GlView;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->setBorderColor(I)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->setFocusBorderVisible(Z)V

    return-void
.end method

.method public setThickness()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0300

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mWidthViewRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mThickness:F

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeOutAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->setQuickScrollEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->getFocusBorderVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->setFocusBorderVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBarFadeInAnim:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->moveToLast()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollBarObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->fadeIn()V

    :cond_4
    return-void
.end method

.method public startTouchAnimation(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->setQuickScrollEnabled(Z)V

    :cond_0
    return-void
.end method

.method public update(FFF)V
    .locals 12

    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    sub-float v5, p3, p2

    invoke-virtual {p0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->getHeight(FF)F

    move-result v4

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mThickness:F

    invoke-virtual {p0, v8, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->setSize(FF)V

    cmpg-float v8, v5, v11

    if-gtz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mHeightSpace:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mTop:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBottom:F

    add-float/2addr v8, v9

    add-float/2addr v8, v4

    sub-float/2addr v8, v0

    div-float v1, v8, v5

    neg-float v8, v0

    div-float/2addr v8, v10

    div-float v9, v4, v10

    add-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mBottom:F

    add-float/2addr v8, v9

    mul-float v9, p3, v1

    sub-float v2, v8, v9

    mul-float v8, v1, p1

    add-float v7, v8, v2

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mWidthSpace:F

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mWidthSpace:F

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mWidth:F

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mPaddingRight:F

    sub-float v6, v8, v9

    const/high16 v8, -0x3bb80000    # -800.0f

    invoke-virtual {p0, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->setPos(FFF)V

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObjW:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mWidth:F

    sub-float/2addr v8, v9

    neg-float v8, v8

    div-float/2addr v8, v10

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupRightMargin:F

    sub-float v3, v8, v9

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mUsePopup:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeFastScrollBar;->mScrollPopupObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v8, v3, v11, v11}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    goto :goto_0
.end method

.method public updateScrollBarImage(Z)V
    .locals 0

    return-void
.end method
