.class public Lcom/sec/samsung/gallery/glview/GlSlideShowView;
.super Lcom/sec/samsung/gallery/glview/GlAbsListView;
.source "GlSlideShowView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I

.field private static final EFFECT_FADE:I = 0x1

.field private static final EFFECT_FLOW:I = 0x0

.field private static final EFFECT_PERSPECTIVE_SHUFFLE:I = 0x4

.field private static final EFFECT_ZOOM_IN:I = 0x2

.field private static final SHORT_TIME_DURATION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "GlSlideShowView"

.field private static final USE_NEW_SLIDESHOW:Z

.field private static final USE_NEW_VIDEO_PLAY:Z

.field private static final USE_SLIDESHOW_SWIPEZOOM:Z


# instance fields
.field private final mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

.field private mIsAfterVideoPlay:Z

.field private mIsAnimationPaused:Z

.field private mIsPauseView:Z

.field private mIsResumedAfterSlide:Z

.field private mIsSlideAnimRunning:Z

.field private mKenBurnEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

.field private mMoveX:I

.field private mPressed:Z

.field private mResetAnim:Z

.field private mSlideEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;

.field private mSlideShowViewListener:Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;

.field private mSlideStartX:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_NEW_SLIDESHOW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShowVideoPlay:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_NEW_VIDEO_PLAY:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSlideShowSwipeZoom:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_SLIDESHOW_SWIPEZOOM:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->DEFAULT_DURATION:I

    return-void

    :cond_0
    const/16 v0, 0x5dc

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/GlAbsListView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAnimationPaused:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsPauseView:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mPressed:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mResetAnim:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAfterVideoPlay:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsResumedAfterSlide:Z

    const-string/jumbo v0, "GlSlideShowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GlSlideShowView created = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->createEffect(Landroid/content/Context;I)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/GlSlideShowView;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/GlSlideShowView;)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mKenBurnEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    return-object v0
.end method

.method private createEffect(Landroid/content/Context;I)Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;
    .locals 4

    const/16 v3, 0x3e8

    const/4 v2, 0x0

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_NEW_SLIDESHOW:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mKenBurnEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;-><init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;-><init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V

    sget v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->DEFAULT_DURATION:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setSlideShowInfo(ILcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;)V

    :goto_0
    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setStartIndex(I)V

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->getEffectNo()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;-><init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V

    sget v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->DEFAULT_DURATION:I

    sget-object v2, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->FLOW_DIRECTION_LEFT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setSlideShowInfo(ILcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;-><init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V

    sget v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->DEFAULT_DURATION:I

    sget-object v2, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->FLOW_DIRECTION_LEFT:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setSlideShowInfo(ILcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow;-><init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V

    sget v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->DEFAULT_DURATION:I

    sget-object v2, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;->FADE:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setSlideShowInfo(ILcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowZoomOnFace;-><init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setSlideShowInfo(ILcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;-><init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setSlideShowInfo(ILcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getEffectNo()I
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->getSavedEffect(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateConfiguration()V
    .locals 5

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWideMode:Z

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroyProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->destroyProgressDialog()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsSlideAnimRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/GlAbsListView$OnItemClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/GlAbsListView$OnItemClickListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/GlAbsListView$OnItemClickListener;->onItemClick()V

    :cond_1
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/GlAbsListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishVideoView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsPlayingVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->updateGLRootView(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->finishSlideshowVideoView()V

    :cond_0
    return-void
.end method

.method public getCurrentSlideIndex()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getCurrentIndex()I

    move-result v0

    return v0
.end method

.method protected getDistance()F
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getDistance()F

    move-result v0

    return v0
.end method

.method public hideNavigationBar(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideShowViewListener:Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;->hideNavigationBarForVideoPlay(Landroid/view/View;)V

    return-void
.end method

.method public ignoreActionBarHide()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideShowViewListener:Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;->ignoreActionBarHide()V

    return-void
.end method

.method public isPauseView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsPauseView:Z

    return v0
.end method

.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "GlSlideShowView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAnimationEnd, mIsAnimationPaused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAnimationPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAnimationPaused:Z

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v2, v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setAnimationStartTime(J)V

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_NEW_SLIDESHOW:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mKenBurnEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    invoke-virtual {v2, v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->setAnimationStartTime(J)V

    :cond_0
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v2, :cond_3

    instance-of v2, p1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->nextLoad(Z)V

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsSlideAnimRunning:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsSlideAnimRunning:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->completeSlide()V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->nextLoad(Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method protected onCommand(ILjava/lang/Object;III)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/sec/samsung/gallery/glview/GlAbsListView;->onCommand(ILjava/lang/Object;III)V

    goto :goto_0
.end method

.method protected onCreate(II)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setClearByColor(Z)V

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/GlAbsListView;->resetLayout()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->updateConfiguration()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    instance-of v0, v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowPerspective;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    new-instance v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView$1;-><init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setOnAnimationReadyListener(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    new-instance v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView$2;-><init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setOnWaitDurationStartListner(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->createView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string/jumbo v0, "GlSlideShowView"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    return-void
.end method

.method protected onMoved(II)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mResetAnim:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    instance-of v2, v2, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_3

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mResetAnim:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsResumedAfterSlide:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mKenBurnEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mKenBurnEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsResumedAfterSlide:Z

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->resetTime(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    check-cast v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowTransitionFadeCircle;->reset(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mPressed:Z

    if-eqz v0, :cond_4

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mMoveX:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->slideImage(II)V

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected onPressed(II)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAnimationPaused:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsResumedAfterSlide:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mPressed:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mPressed:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mPressed:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideStartX:F

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mResetAnim:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mPressed:Z

    goto :goto_0
.end method

.method protected onReleased(IIII)Z
    .locals 10

    const-wide/16 v2, 0xfa

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mPressed:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->isMoveStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mMoveX:I

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getMoveDirection(I)I

    move-result v6

    const/16 v1, -0x1b

    if-eq v6, v1, :cond_1

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsSlideAnimRunning:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    const/16 v1, -0x19

    if-ne v6, v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getCurrentObjectIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getNextObjectIndex()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->setDurationObject(JLcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideStartX:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->setMoveStartPos(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->setDeltaMoved(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->start()V

    :cond_1
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mPressed:Z

    :cond_2
    move v1, v7

    :goto_1
    return v1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getCurrentObjectIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getPreviousObjectIndex()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideSnapbackAnim;->setDurationObject(JLcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;I)V

    goto :goto_0

    :cond_4
    move v1, v8

    goto :goto_1
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/GlAbsListView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/GlAbsListView$OnItemClickListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/GlAbsListView$OnItemClickListener;->onItemClick()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 2

    const-string/jumbo v0, "GlSlideShowView"

    const-string/jumbo v1, "pause, removeAnimation, pauseView, listener=null"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mKenBurnEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->pauseView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    return-void
.end method

.method public reInitializeLayer()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideShowViewListener:Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;->reInitializeLayer()V

    return-void
.end method

.method protected resetLayout()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/GlAbsListView;->resetLayout()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->updateConfiguration()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->reLayoutView()V

    return-void
.end method

.method public resume()V
    .locals 3

    const-string/jumbo v0, "GlSlideShowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resume, mIsAnimationPaused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAnimationPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAnimationPaused:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mKenBurnEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_1
    return-void
.end method

.method public setAdapter(Lcom/sec/samsung/gallery/glview/GlBaseAdapter;)V
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v0, "GlSlideShowView"

    const-string/jumbo v2, "setAdapter"

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_NEW_VIDEO_PLAY:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAfterVideoPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAfterVideoPlay:Z

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setAfterVideoPlay(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    check-cast p1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setAdapter(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_NEW_VIDEO_PLAY:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAfterVideoPlay:Z

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAfterVideoPlay:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setAfterVideoPlay(Z)V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAfterVideoPlay:Z

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setAfterVideoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAfterVideoPlay:Z

    return-void
.end method

.method public setAnimationPaused(Z)V
    .locals 3

    const-string/jumbo v0, "GlSlideShowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimationPaused isPaused["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] mIsAnimationPaused["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAnimationPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAnimationPaused:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAnimationPaused:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsAnimationPaused:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setAnimationPaused()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mKenBurnEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->setAnimationPaused()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mKenBurnEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mKenBurnEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    goto :goto_0
.end method

.method public setFinishVideoOnTouch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setFinishVideoOnTouch(Z)V

    :cond_0
    return-void
.end method

.method public setPauseView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsPauseView:Z

    return-void
.end method

.method public setSlideShowRootViewVisibilityListener(Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideShowViewListener:Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;

    return-void
.end method

.method public startAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->isVideoMediaItem()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->USE_NEW_VIDEO_PLAY:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsResumedAfterSlide:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->startAnimation(ZZ)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mIsResumedAfterSlide:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mEffect:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->playVideoFile()V

    goto :goto_0
.end method

.method public updateGLRootView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideShowViewListener:Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;->updateRootView(Z)V

    return-void
.end method

.method public updateLayer()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mSlideShowViewListener:Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;->updateLayer()V

    return-void
.end method
