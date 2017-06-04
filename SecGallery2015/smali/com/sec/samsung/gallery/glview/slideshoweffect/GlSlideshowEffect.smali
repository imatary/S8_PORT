.class public abstract Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlSlideshowEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;,
        Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;
    }
.end annotation


# static fields
.field public static final MOVE_DIRECTION_INVALID:I = -0x1b

.field static final MOVE_DIRECTION_LEFT:I = -0x1a

.field public static final MOVE_DIRECTION_RIGHT:I = -0x19

.field private static final TAG:Ljava/lang/String; = "GlSlideshowEffect"

.field private static final USE_NEW_SLIDESHOW:Z

.field static final USE_NEW_SLIDESHOW_CIRCLEUP:Z

.field private static final USE_NEW_VIDEO_PLAY:Z

.field private static final USE_PROGRESS_DIALOG_IN_SLIDESHOW:Z

.field static final USE_SLIDESHOW_SWIPEZOOM:Z


# instance fields
.field mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

.field private mAnimationStartTime:J

.field private mContainer:Landroid/view/ViewGroup;

.field final mContext:Landroid/content/Context;

.field final mCurIndex:I

.field mCurrentIndex:I

.field mEffectDuration:J

.field mFirstLoad:Z

.field mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

.field mInitialLoaded:I

.field mInitialTotal:I

.field private mIsAfterVideoPlay:Z

.field private mIsMWModeFirst:Z

.field mIsPausedWithoutAnimationEnd:Z

.field public mIsPlayingVideo:Z

.field private mIsVideoFinishOnTouch:Z

.field mLastUpdateRatio:F

.field mLoadIndex:I

.field mMaxDisplayObjCount:I

.field private mMoveDirection:I

.field mMoveStarted:Z

.field final mNextIndex:I

.field mOnAnimationReadyListener:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;

.field private final mOnSlideImageItemListener:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;

.field private mOnWaitDurationStartListner:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;

.field final mPrevIndex:I

.field private mProgressBar:Landroid/view/View;

.field private mRealWaitDuration:J

.field private mSlideshowVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

.field final mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

.field mWaitDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_NEW_SLIDESHOW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShowVideoPlay:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_NEW_VIDEO_PLAY:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseProgressDialogInSlideshow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_PROGRESS_DIALOG_IN_SLIDESHOW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSlideShowSwipeZoom:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSlideShowCircleAnimation:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_NEW_SLIDESHOW_CIRCLEUP:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/samsung/gallery/glview/GlSlideShowView;Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsMWModeFirst:Z

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mProgressBar:Landroid/view/View;

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurIndex:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsPausedWithoutAnimationEnd:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialLoaded:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialTotal:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMaxDisplayObjCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLastUpdateRatio:F

    iput-wide v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimationStartTime:J

    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mEffectDuration:J

    iput-wide v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsVideoFinishOnTouch:Z

    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mWaitDuration:J

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsPlayingVideo:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsAfterVideoPlay:Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$1;-><init>(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnSlideImageItemListener:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;

    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GlSlideshowEffect created = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mFirstLoad=false, mNeedLoad=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_NEW_SLIDESHOW:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->getSavedSpeedTimeMSec(Landroid/content/Context;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mWaitDuration:J

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f1200d5

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContainer:Landroid/view/ViewGroup;

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_PROGRESS_DIALOG_IN_SLIDESHOW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0400fd

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mProgressBar:Landroid/view/View;

    :cond_1
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mFirstLoad:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialLoaded:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsMWModeFirst:Z

    return-void

    :cond_2
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mProgressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mProgressBar:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updatePlayVideo(Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method private checkForVideoItem(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsPlayingVideo:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$5;-><init>(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;Lcom/sec/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$3;-><init>(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getStartIndex()I
    .locals 2

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    goto :goto_0
.end method

.method private initialLoadRequest()V
    .locals 5

    const-string/jumbo v1, "GlSlideshowEffect"

    const-string/jumbo v2, "initialLoadRequest start"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimState:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mFirstLoad:Z

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "GlSlideshowEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "abnormal case, mAnimState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mFirstLoad="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mFirstLoad:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    if-nez v1, :cond_2

    const-string/jumbo v1, "GlSlideshowEffect"

    const-string/jumbo v2, "adapter = null"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v1, "GlSlideshowEffect"

    const-string/jumbo v2, "count = 0"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMaxDisplayObjCount:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialTotal:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialTotal:I

    if-le v1, v0, :cond_4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialTotal:I

    :cond_4
    const-string/jumbo v1, "GlSlideshowEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mInitialTotal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialTotal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialTotal:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->requestInitialBitmapResources(II)V

    :goto_1
    sget-boolean v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialTotal:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    :goto_2
    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    const-string/jumbo v1, "GlSlideshowEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialLoadRequest end. mLoadIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->requestBitmapResource(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialTotal:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->requestInitialBitmapResources(II)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialTotal:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->requestInitialBitmapResources(II)V

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialTotal:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    goto :goto_2
.end method

.method private isSafeVideoPlay(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mIsAfterVideoPlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsAfterVideoPlay:Z

    return v0
.end method

.method private nextLoad()V
    .locals 3

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateNextGlObject()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->prepareNextBitmapResource()V

    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nextLoad end mCurrentIndex=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] mLoadIndex=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnAnimationReadyListener:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;->onAnimationReady(Z)V

    return-void
.end method

.method private nextLoadWithVideoPlay(Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsAfterVideoPlay:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsVideoFinishOnTouch:Z

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->isSafeVideoPlay(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updatePreviousGLObject()V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateCurrentGLObject()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateNextGlObject()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->prepareNextBitmapResource()V

    const-string/jumbo v2, "GlSlideshowEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "nextLoad AfterVideoPlay mCurrentIndex=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mLoadIndex=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnAnimationReadyListener:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;

    invoke-interface {v2, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;->onAnimationReady(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->isSafeVideoPlay(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsVideoFinishOnTouch:Z

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mFirstLoad:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateCurrentGLObject()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateNextGlObject()V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->checkForVideoItem(Lcom/sec/android/gallery3d/data/MediaItem;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->prepareNextBitmapResource()V

    const-string/jumbo v2, "GlSlideshowEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "nextLoad Video Play mCurrentIndex=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mLoadIndex=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsVideoFinishOnTouch:Z

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_PROGRESS_DIALOG_IN_SLIDESHOW:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->dismissProgressDialog()V

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateCurrentGLObject()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateNextGlObject()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->prepareNextBitmapResource()V

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updatePreviousGLObject()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->preparePreviousBitmapResource()V

    :cond_5
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsVideoFinishOnTouch:Z

    const-string/jumbo v2, "GlSlideshowEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "nextLoad onTouch mCurrentIndex=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mLoadIndex=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnAnimationReadyListener:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;

    invoke-interface {v2, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;->onAnimationReady(Z)V

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateNextGlObject()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->prepareNextBitmapResource()V

    const-string/jumbo v2, "GlSlideshowEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "nextLoad end mCurrentIndex=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mLoadIndex=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnAnimationReadyListener:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;

    invoke-interface {v2, v6}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;->onAnimationReady(Z)V

    goto/16 :goto_0
.end method

.method private preparePreviousBitmapResource()V
    .locals 4

    const-string/jumbo v1, "GlSlideshowEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preparePreviousBitmapResource, mCurrentIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->isRequestInProgress(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->requestBitmapResource(I)V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/lit8 v0, v1, -0x2

    goto :goto_0
.end method

.method private previousLoad()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    if-nez v0, :cond_0

    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "previous Load Starts Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updatePreviousGLObject()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->preparePreviousBitmapResource()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    goto :goto_1
.end method

.method private showProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$2;-><init>(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private swapObject(I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, -0x19

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    aget-object v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurIndex:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    aput-object v0, v1, v2

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->moveToLast()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    aget-object v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurIndex:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    aput-object v0, v1, v2

    goto :goto_1
.end method

.method private updateCurrentGLObject()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const-string/jumbo v1, "GlSlideshowEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentGLObject Currentindex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "GlSlideshowEffect"

    const-string/jumbo v2, "fail to get bitmap."

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getBrokenThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMaxDisplayObjCount:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateObject(Lcom/sec/samsung/gallery/glview/GlBaseObject;Landroid/graphics/Bitmap;)V

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurIndex:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMaxDisplayObjCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    goto :goto_0
.end method

.method private updateDrawing(Lcom/sec/samsung/gallery/glview/GlBaseObject;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mFromObjectStopDrawing:Z

    return-void
.end method

.method private updatePlayVideo(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 5

    new-instance v2, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-direct {v2, v3, v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/glview/GlSlideShowView;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mSlideshowVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExternalDisplayAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMassSlideshow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsMWModeFirst:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "ACTION_PRESENTATION_VIDEO_VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "VideoUri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mSlideshowVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mSlideshowVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->initVideoView(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method

.method private updatePreviousGLObject()V
    .locals 7

    const/4 v6, 0x0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    const-string/jumbo v3, "GlSlideshowEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePreviousGlObject "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v3, "GlSlideshowEffect"

    const-string/jumbo v4, "fail to get bitmap."

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getBrokenThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateObject(Lcom/sec/samsung/gallery/glview/GlBaseObject;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    return-void

    :cond_1
    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v4

    rem-int v2, v3, v4

    goto :goto_0
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->onUpdate(F)V

    return-void
.end method

.method public completeSlide()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMoveDirection:I

    const/16 v1, -0x19

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMoveDirection:I

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->swapObject(I)V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->nextLoad(Z)V

    :goto_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMoveStarted:Z

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMoveDirection:I

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->swapObject(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->previousLoad()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateNextGlObject()V

    goto :goto_0
.end method

.method public createView()V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const-string/jumbo v1, "GlSlideshowEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createView, this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMaxDisplayObjCount:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMaxDisplayObjCount:I

    new-array v1, v1, [Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    new-instance v2, Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v5, v5, v4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FFI)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "GlSlideshowEffect"

    const-string/jumbo v2, "createView end"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->onCreate()V

    return-void
.end method

.method public destroyProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$4;-><init>(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishSlideshowVideoView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mSlideshowVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mSlideshowVideoView:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->finishSlideshowVideoView()V

    :cond_0
    return-void
.end method

.method firstLoading(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)V
    .locals 9

    const-string/jumbo v5, "GlSlideshowEffect"

    const-string/jumbo v6, "firstLoading start"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v5, "GlSlideshowEffect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "adapter="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", item="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v5, "GlSlideshowEffect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mAdapter="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialLoaded:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialLoaded:I

    const-string/jumbo v5, "GlSlideshowEffect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "an initial item. mInitialLoadedCount++"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialLoaded:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getStartIndex()I

    move-result v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialLoaded:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mInitialTotal:I

    if-ne v5, v7, :cond_6

    const-string/jumbo v5, "GlSlideshowEffect"

    const-string/jumbo v7, "finish loading initial items. update GlObjects"

    invoke-static {v5, v7}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMaxDisplayObjCount:I

    if-ge v2, v5, :cond_4

    add-int v0, v4, v2

    rem-int/2addr v0, v1

    const-string/jumbo v5, "GlSlideshowEffect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update obj["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] <- Bitmap["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v7, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateObject(Lcom/sec/samsung/gallery/glview/GlBaseObject;Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_3

    sget-boolean v5, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_NEW_SLIDESHOW_CIRCLEUP:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateDrawing(Lcom/sec/samsung/gallery/glview/GlBaseObject;)V

    sget-boolean v5, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateDrawing(Lcom/sec/samsung/gallery/glview/GlBaseObject;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMaxDisplayObjCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->prepareNextBitmapResource()V

    sget-boolean v5, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->preparePreviousBitmapResource()V

    :cond_5
    sget-boolean v5, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_NEW_VIDEO_PLAY:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v7, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v5, v7}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->isSafeVideoPlay(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mFirstLoad:Z

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->checkForVideoItem(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_6
    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v5, "GlSlideshowEffect"

    const-string/jumbo v6, "firstLoading end"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnAnimationReadyListener:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;->onAnimationReady(Z)V

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_8
    :try_start_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnAnimationReadyListener:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;->onAnimationReady(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    return v0
.end method

.method public getCurrentObjectIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurIndex:I

    return v0
.end method

.method getDelta_linear(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    :goto_0
    return p3

    :cond_0
    sub-float v0, p3, p2

    mul-float/2addr v0, p1

    add-float p3, p2, v0

    goto :goto_0
.end method

.method getDelta_sinusoidalIN(FFF)F
    .locals 6

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    :goto_0
    return p3

    :cond_0
    sub-float v0, p3, p2

    float-to-double v2, p1

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    neg-float v2, v0

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    add-float p3, v2, p2

    goto :goto_0
.end method

.method getDelta_sinusoidalOut(FFF)F
    .locals 6

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    :goto_0
    return p3

    :cond_0
    sub-float v0, p3, p2

    float-to-double v2, p1

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float v2, v0, v1

    add-float p3, v2, p2

    goto :goto_0
.end method

.method public getDistance()F
    .locals 1

    const/high16 v0, 0x44480000    # 800.0f

    return v0
.end method

.method public getMoveDirection(I)I
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, -0x1b

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMoveDirection:I

    :goto_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMoveDirection:I

    return v0

    :cond_0
    if-gez p1, :cond_1

    const/16 v0, -0x19

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMoveDirection:I

    goto :goto_0

    :cond_1
    const/16 v0, -0x1a

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMoveDirection:I

    goto :goto_0
.end method

.method getNextIndex()I
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v1

    rem-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMaxDisplayObjCount:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v1

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method public getNextObjectIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    return v0
.end method

.method public getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FFI)V

    goto :goto_0
.end method

.method public getPreviousObjectIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    return v0
.end method

.method protected abstract getWaitDuration()J
.end method

.method public isMoveStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMoveStarted:Z

    return v0
.end method

.method public isVideoMediaItem()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    if-nez v2, :cond_0

    const-string/jumbo v2, "GlSlideshowEffect"

    const-string/jumbo v3, "adapter == null!"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->isSafeVideoPlay(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "GlSlideshowEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wrong index while Resume : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public nextLoad(Z)V
    .locals 3

    const-string/jumbo v0, "GlSlideshowEffect"

    const-string/jumbo v1, "nextLoad start"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimState:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "abnormal case, mEffectState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    if-nez v0, :cond_1

    const-string/jumbo v0, "GlSlideshowEffect"

    const-string/jumbo v1, "adapter == null!"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_NEW_VIDEO_PLAY:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->nextLoad()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->nextLoadWithVideoPlay(Z)V

    goto :goto_0
.end method

.method protected abstract onCreate()V
.end method

.method protected abstract onLayout()V
.end method

.method protected abstract onPause()V
.end method

.method protected onStart()V
    .locals 2

    const-string/jumbo v0, "GlSlideshowEffect"

    const-string/jumbo v1, "onStart, mIsPausedWithoutAnimationEnd = false"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsPausedWithoutAnimationEnd:Z

    return-void
.end method

.method protected abstract onUpdate(F)V
.end method

.method public pauseView()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "GlSlideshowEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pauseView, this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", set listener null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_PROGRESS_DIALOG_IN_SLIDESHOW:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->destroyProgressDialog()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->onPause()V

    const-string/jumbo v2, "GlSlideshowEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set listener to null, this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->setOnSlideImageItemListener(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->remove()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    aput-object v5, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GlSlideshowEffect"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    :cond_3
    const-string/jumbo v2, "GlSlideshowEffect"

    const-string/jumbo v3, "pauseView, mGlObjects = null"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public playVideoFile()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    if-nez v1, :cond_0

    const-string/jumbo v1, "GlSlideshowEffect"

    const-string/jumbo v2, "adapter == null!"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    const-string/jumbo v1, "GlSlideshowEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wrong index while Resume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsVideoFinishOnTouch:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLastUpdateRatio:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mFirstLoad:Z

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->checkForVideoItem(Lcom/sec/android/gallery3d/data/MediaItem;)V

    const-string/jumbo v1, "GlSlideshowEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resume Video Play mCurrentIndex=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] mLoadIndex=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method prepareNextBitmapResource()V
    .locals 4

    const-string/jumbo v1, "GlSlideshowEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareNextBitmapResource, mLoadIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    add-int/lit8 v0, v1, 0x2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->isRequestInProgress(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->requestBitmapResource(I)V

    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->isRequestInProgress(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLoadIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->requestBitmapResource(I)V

    goto :goto_0
.end method

.method public process(J)V
    .locals 3

    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "process index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->process(J)V

    return-void
.end method

.method public reLayoutView()V
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mGlObjects:[Lcom/sec/samsung/gallery/glview/GlBaseObject;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getContentBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setObjectAttribute(Lcom/sec/samsung/gallery/glview/GlBaseObject;Landroid/graphics/Bitmap;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->onLayout()V

    :cond_2
    return-void
.end method

.method public setAdapter(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnSlideImageItemListener:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->setOnSlideImageItemListener(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_PROGRESS_DIALOG_IN_SLIDESHOW:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->showProgressDialog()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsAfterVideoPlay()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mFirstLoad:Z

    const-string/jumbo v0, "GlSlideshowEffect"

    const-string/jumbo v1, "mFirstLoad=true [setAdapter]"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->initialLoadRequest()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->nextLoad(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setAfterVideoPlay(Z)V

    goto :goto_0
.end method

.method public setAfterVideoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsAfterVideoPlay:Z

    return-void
.end method

.method public setAnimationPaused()V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsPausedWithoutAnimationEnd:Z

    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimationPaused, mIsPausedWithoutAnimationEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsPausedWithoutAnimationEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_0

    iput-wide v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    :cond_0
    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnimation mRealWaitDuration["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] mAnimationStartTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimationStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setAnimationStartTime(J)V
    .locals 5

    iput-wide p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimationStartTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimationStartTime mRealWaitDuration["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] mAnimationStartTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimationStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFinishVideoOnTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsVideoFinishOnTouch:Z

    return-void
.end method

.method setObjectAttribute(Lcom/sec/samsung/gallery/glview/GlBaseObject;Landroid/graphics/Bitmap;)V
    .locals 12

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v9, v10

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v0, v10

    div-float v6, v9, v0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidth:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeight:I

    int-to-float v11, v11

    div-float v5, v10, v11

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v4, v10, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mWidthSpace:F

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget v3, v10, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->mHeightSpace:F

    cmpl-float v10, v6, v5

    if-lez v10, :cond_1

    div-float v3, v4, v6

    :goto_1
    move v2, v4

    move v1, v3

    neg-float v10, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v2, v11

    add-float v7, v10, v11

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v1, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v1, v11

    sub-float v8, v10, v11

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getDistance()F

    move-result v10

    neg-float v10, v10

    invoke-virtual {p1, v7, v8, v10}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    invoke-virtual {p1, v2, v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setSize(FF)V

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {p1, v10, v11}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setScale(FF)V

    goto :goto_0

    :cond_1
    mul-float v4, v3, v6

    goto :goto_1
.end method

.method public setOnAnimationReadyListener(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnAnimationReadyListener:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnAnimationReadyListener;

    return-void
.end method

.method public setOnWaitDurationStartListner(Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnWaitDurationStartListner:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;

    return-void
.end method

.method public setSlideShowInfo(ILcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowTransitionShow$TransitionType;)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mEffectDuration:J

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurrentIndex:I

    return-void
.end method

.method public slideImage(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMoveStarted:Z

    return-void
.end method

.method public startAnimation(ZZ)V
    .locals 10

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mFirstLoad:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "need to wait!!! mFirstLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mFirstLoad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isFirstStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnimation isFirstStart["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] isRestart["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getWaitDuration()J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-gez v0, :cond_1

    const-wide/16 v8, 0x0

    :cond_1
    if-eqz p1, :cond_4

    const-string/jumbo v0, "GlSlideshowEffect"

    const-string/jumbo v1, "[startAnimation, isFirstStart=true], mFirstLoad=false"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_PROGRESS_DIALOG_IN_SLIDESHOW:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->dismissProgressDialog()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mFirstLoad:Z

    iput-wide v8, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimationStartTime:J

    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnimation waitDuration["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] mAnimationStartTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimationStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnWaitDurationStartListner:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnWaitDurationStartListner:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimationStartTime:J

    move v6, p1

    move v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;->onWaitStarts(Lcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;JZZ)V

    :cond_3
    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->startAfter(J)V

    goto/16 :goto_0

    :cond_4
    if-eqz p2, :cond_7

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mIsPausedWithoutAnimationEnd:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "GlSlideshowEffect"

    const-string/jumbo v1, "startAnimation start now"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mLastUpdateRatio:F

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setStartRatio(F)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->start()V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnimation mRealWaitDuration["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimationStartTime:J

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnWaitDurationStartListner:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnWaitDurationStartListner:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimationStartTime:J

    move v6, p1

    move v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;->onWaitStarts(Lcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;JZZ)V

    :cond_6
    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->startAfter(J)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    sub-long v0, v8, v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_8

    iput-wide v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimationStartTime:J

    const-string/jumbo v0, "GlSlideshowEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnimation mRealWaitDuration["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->startAfter(J)V

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnWaitDurationStartListner:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mOnWaitDurationStartListner:Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mCurIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAnimationStartTime:J

    move v6, p1

    move v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect$OnWaitDurationStartsListener;->onWaitStarts(Lcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;JZZ)V

    :cond_9
    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mRealWaitDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->startAfter(J)V

    goto/16 :goto_0
.end method

.method updateNextGlObject()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getNextIndex()I

    move-result v1

    const-string/jumbo v2, "GlSlideshowEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNextGlObject nextIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "GlSlideshowEffect"

    const-string/jumbo v3, "fail to get bitmap."

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getBrokenThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_NEW_SLIDESHOW_CIRCLEUP:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mNextIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateDrawing(Lcom/sec/samsung/gallery/glview/GlBaseObject;)V

    :cond_1
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateDrawing(Lcom/sec/samsung/gallery/glview/GlBaseObject;)V

    :cond_2
    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMaxDisplayObjCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->updateObject(Lcom/sec/samsung/gallery/glview/GlBaseObject;Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mMaxDisplayObjCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mPrevIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->getObject(I)Lcom/sec/samsung/gallery/glview/GlBaseObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlphaEx(F)V

    :cond_3
    return-void
.end method

.method updateObject(Lcom/sec/samsung/gallery/glview/GlBaseObject;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->mView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->getGlRoot()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideshowEffect;->setObjectAttribute(Lcom/sec/samsung/gallery/glview/GlBaseObject;Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->requestFullUpload()V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->invalidateContent()V

    goto :goto_0
.end method
