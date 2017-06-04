.class public Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;
.super Lcom/sec/android/gallery3d/app/ActivityState;
.source "SlideShowViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;
.implements Ljava/util/Observer;


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "android.mtp.MtpClient.action.USB_PERMISSION"

.field private static final DEBUG:Z = true

.field public static final KEY_CLUSTER_TYPE:Ljava/lang/String; = "clusterType"

.field public static final KEY_INDEX:Ljava/lang/String; = "index"

.field public static final KEY_PATH:Ljava/lang/String; = "path"

.field private static final KEY_PREV_BUNDLE:Ljava/lang/String; = "prev_bundle"

.field public static final KEY_SELECTION_MEDIAITEM_ORDER_MAP:Ljava/lang/String; = "mediaItemOrderMap"

.field public static final KEY_SELECTION_MODE:Ljava/lang/String; = "selectionMode"

.field public static final KEY_SLIDESHOW_PATH:Ljava/lang/String; = "slideShowPath"

.field public static final KEY_SMART_VIEW_MODE:Ljava/lang/String; = "smartViewMode"

.field public static final KEY_TOTAL_SELECT_COUNT:Ljava/lang/String; = "totalCount"

.field private static final MSG_FINISH_SLIDE_SHOW:I = 0x0

.field private static final MSG_HIDE_BARS:I = 0x1

.field private static final MSG_HIDE_BARS_INTERVAL:I = 0xbb8

.field private static final REQUEST_SLIDESHOW_SETTING:I = 0x0

.field private static final REQUEST_SLIDESHOW_SETTING_FOR_EXTERNAL_DEVICES:I = 0x1

.field public static final RESULT_FINISH_SLIDESHOW:I = 0x1

.field public static final RESULT_START_SLIDESHOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SlideShowViewState"

.field private static final USE_MULTIWINDOW:Z

.field private static final USE_PROGRESS_DIALOG_IN_SLIDESHOW:Z

.field private static mDockStatePrevious:I

.field private static mSmartDockStatePrevious:I


# instance fields
.field private final USE_NEW_SLIDESHOW:Z

.field private mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

.field private mCurrentSlideIndex:I

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHasPermission:Z

.field private mIgnoreHideActionBarForVideoPlay:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsBackFromSlideShowSettingView:Z

.field private mIsFullScreen:Z

.field private mIsPresentationStarted:Z

.field private mIsSlideShowPauseView:Z

.field private mKeyboardConfig:I

.field public mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mSlideShowPauseView:Landroid/view/View;

.field private mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_MULTIWINDOW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseProgressDialogInSlideshow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_PROGRESS_DIALOG_IN_SLIDESHOW:Z

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mDockStatePrevious:I

    sget v0, Lcom/sec/samsung/gallery/lib/factory/IntentWrapper;->EXTRA_SMART_DOCK_STATE_UNDOCKED:I

    sput v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSmartDockStatePrevious:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsFullScreen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mCurrentSlideIndex:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mHasPermission:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsSlideShowPauseView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIgnoreHideActionBarForVideoPlay:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$1;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$3;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideshowPauseViewEnable(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mDockStatePrevious:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .locals 0

    sput p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mDockStatePrevious:I

    return p0
.end method

.method static synthetic access$1700()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSmartDockStatePrevious:I

    return v0
.end method

.method static synthetic access$1702(I)I
    .locals 0

    sput p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSmartDockStatePrevious:I

    return p0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->isSlideShowPauseViewVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->hideBars(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIgnoreHideActionBarForVideoPlay:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->hideNavigationBar(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsFullScreen:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsFullScreen:Z

    return p1
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_MULTIWINDOW:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private addKeepScreenOnFlag(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "SlideShowViewState"

    const-string/jumbo v1, "ignore add keep screen on flag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method private clearKeepScreenOnFlag(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "SlideShowViewState"

    const-string/jumbo v1, "ignore clear keep screen on flag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$9;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$9;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private finishCurrentViewState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$6;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishSlideshowPauseView()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "SlideShowViewState"

    const-string/jumbo v2, "finishSlideshowPauseView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->isSlideShowPauseViewVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideshowPauseViewEnable(Z)V

    :cond_1
    const-string/jumbo v1, "SlideShowViewState"

    const-string/jumbo v2, "remove slideshow pause view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/view/ViewManager;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v3, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private hideBars(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setShowHideAnimationEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->hide()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setShowHideAnimationEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    :cond_0
    return-void
.end method

.method private hideNavigationBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->hideNavigationBar(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private hideNavigationBar(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0xf02

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private initSlideshowPauseView()V
    .locals 6

    const/4 v5, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400fc

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f120246

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$8;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$8;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isSlideShowPauseViewVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsSlideShowPauseView:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printDisplayInfo(I)V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "SlideShowViewState"

    const-string/jumbo v3, "display == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const-string/jumbo v2, "SlideShowViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Display ID] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SlideShowViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SlideShowViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 6

    new-instance v4, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$7;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$7;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v4, Lcom/sec/samsung/gallery/lib/factory/IntentWrapper;->ACTION_PALM_DOWN:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "file"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.mtp.MtpClient.action.USB_PERMISSION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerLayoutListener()V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private resetNavigationBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private resumeSlideShow()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->hideBars(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideshowPauseViewEnable(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->startAnimation()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "7013"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0845

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "Resume"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method

.method private setSlideshowPauseViewEnable(Z)V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "SlideShowViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSlideshowPauseViewEnable, enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->showNavigationBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->clearKeepScreenOnFlag(Landroid/app/Activity;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsBackFromSlideShowSettingView:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMassSlideshow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMassSlideshow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setPauseView(Z)V

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsSlideShowPauseView:Z

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowPauseView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->hideNavigationBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->addKeepScreenOnFlag(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method private showNavigationBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getGlSlideShowView()Lcom/sec/samsung/gallery/glview/GlSlideShowView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    return-object v0
.end method

.method public getSAScreenId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "707"

    return-object v0
.end method

.method public getSlideShowAdapter()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    return-object v0
.end method

.method protected onBackPressed()V
    .locals 2

    const-string/jumbo v0, "SlideShowViewState"

    const-string/jumbo v1, "Stop slideshow by back key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mKeyboardConfig:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "SlideShowViewState"

    const-string/jumbo v1, "Stop slideshow by hard keyboard hidden"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x400

    const/4 v3, 0x1

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v4, "SlideShowViewState onCreate Start"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    new-instance v2, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v4, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    new-instance v2, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v4, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    sget-boolean v2, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_MULTIWINDOW:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsFullScreen:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->registerLayoutListener()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    const-string/jumbo v2, "clusterType"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideShowMode(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->hideNavigationBar()V

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->initSlideshowPauseView()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->registerBroadcastReceiver()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/samsung/android/devicecog/gallery/viewstatehandler/SlideShowViewDCHandler;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/SlideShowViewDCHandler;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    :cond_3
    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "SlideShowViewState onCreate End"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "SlideShowViewState onDestroy Start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_PROGRESS_DIALOG_IN_SLIDESHOW:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->destroyProgressDialog()V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mCurrentSlideIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->pushPreviousInfo(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->isSlideShowPauseViewVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishSlideshowPauseView()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsPresentationStarted:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->onDestroy()V

    :cond_4
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsPresentationStarted:Z

    if-nez v3, :cond_5

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideShowMode(Z)V

    :cond_5
    sget-boolean v3, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_MULTIWINDOW:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_6
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->resetNavigationBar()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_7
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "SlideShowViewState onDestroy End"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 3

    const-string/jumbo v0, "SlideShowViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->printDisplayInfo(I)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    const-string/jumbo v0, "SlideShowViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->isServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExternalDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getsInstance()Lcom/sec/android/gallery3d/util/ReflectUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/ReflectUtil;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SlideShowViewState"

    const-string/jumbo v1, "Stop Presentation and Finish Slideshow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->stopPresentation(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 3

    const-string/jumbo v0, "SlideShowViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayRemoved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->isServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const-string/jumbo v0, "SlideShowViewState"

    const-string/jumbo v1, "Stop Presentation and Finish Slideshow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->stopPresentation(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V

    :cond_0
    return-void
.end method

.method public onMWLayoutChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->setBrightnessControl(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->setBrightnessControl(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v2, "SlideShowViewState onPause Start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->getCurrentSlideIndex()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mCurrentSlideIndex:I

    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->clearKeepScreenOnFlag(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsPresentationStarted:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShowVideoPlay:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->finishVideoView()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->pause()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isForcePause()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->setBrightnessControl(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    :cond_3
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "SlideShowViewState onPause End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "prev_bundle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getSourceMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->reInitAdapter(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v2, "index"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mCurrentSlideIndex:I

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 13

    const/4 v11, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string/jumbo v9, "Gallery_Performance"

    const-string/jumbo v10, "SlideShowViewState onResume Start"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v9, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mKeyboardConfig:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->isSlideShowPauseViewVisible()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v9}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->addKeepScreenOnFlag(Landroid/app/Activity;)V

    :cond_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mCurrentSlideIndex:I

    if-eq v9, v11, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    iget v10, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mCurrentSlideIndex:I

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->setCurrentIndex(I)V

    iput v11, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mCurrentSlideIndex:I

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->onResume()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getCount()I

    move-result v9

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mCurrentSlideIndex:I

    if-eq v9, v11, :cond_3

    iget v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mCurrentSlideIndex:I

    :goto_0
    iput v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mCurrentSlideIndex:I

    new-instance v9, Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v9, v10, v5}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    :cond_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v10, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v9, v10}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    array-length v10, v3

    move v9, v7

    :goto_1
    if-ge v9, v10, :cond_5

    aget-object v2, v3, v9

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->printDisplayInfo(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getStartIndex()I

    move-result v5

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a0151

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V

    :goto_2
    return-void

    :cond_5
    invoke-static {}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getsInstance()Lcom/sec/android/gallery3d/util/ReflectUtil;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/util/ReflectUtil;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mHasPermission:Z

    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->isServiceRunning()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mHasPermission:Z

    if-nez v9, :cond_6

    const-string/jumbo v9, "SlideShowViewState"

    const-string/jumbo v10, "Don\'t have permission. Stop slideshow service"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->stopPresentation(Landroid/content/Context;)V

    :cond_6
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mHasPermission:Z

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExternalDisplayAvailable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_e

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMassSlideshow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v9

    if-nez v9, :cond_e

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    if-nez v9, :cond_c

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v9, v8}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    :cond_7
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    new-instance v6, Landroid/content/Intent;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v10, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v9, "isMultiWindow"

    sget-boolean v10, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_MULTIWINDOW:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v10

    if-eqz v10, :cond_8

    move v7, v8

    :cond_8
    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "7011"

    invoke-static {v7, v9}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v7, :cond_9

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideShowMode(Z)V

    :cond_9
    new-instance v7, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v9}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam;->setBeamListener()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v7, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isForceResume()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->setBrightnessControl(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    :cond_a
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    new-instance v8, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;

    invoke-direct {v8, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$2;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setSlideShowRootViewVisibilityListener(Lcom/sec/samsung/gallery/glview/GlSlideShowView$SlideShowRootViewVisibilityListener;)V

    :cond_b
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onResume()V

    const-string/jumbo v7, "Gallery_Performance"

    const-string/jumbo v8, "SlideShowViewState onResume End"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v9, :cond_d

    new-instance v9, Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v11, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mCurrentSlideIndex:I

    invoke-direct {v9, v10, v11}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v9, v7}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v7, v9, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideShowMode(Z)V

    :cond_d
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsPresentationStarted:Z

    const-string/jumbo v7, "SlideShowViewState"

    const-string/jumbo v9, "try to start service"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v9, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-direct {v6, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v7, "key_display_id"

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v10, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v9, v10}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {p0, v7}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->setSlideShowContent(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideShowMode(Z)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v4

    const-string/jumbo v7, "SlideShowViewState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f1001e6

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    aget v10, v0, v8

    const/4 v11, 0x2

    aget v11, v0, v11

    const/4 v12, 0x3

    aget v12, v0, v12

    aget v7, v0, v7

    invoke-virtual {v9, v10, v11, v12, v7}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_f
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->isSlideShowPauseViewVisible()Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    :goto_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v7, v9, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v7, "SlideShowViewState"

    const-string/jumbo v9, "Unable to resume SlideShowViewState. mSlideShowView is null"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V

    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getData()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "path"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "gallerysearchall"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x4

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getSourceMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    aput-object v3, v1, v5

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "SEARCH_INFO_SAVE_RESTORE"

    invoke-virtual {v3, v4, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "prev_bundle"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->getCurrentSlideIndex()I

    move-result v0

    const-string/jumbo v3, "index"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "SlideShowViewState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Currentindex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "SlideShowViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateResult, request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mCurrentSlideIndex:I

    invoke-direct {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v2, v3, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideShowMode(Z)V

    :cond_1
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsPresentationStarted:Z

    const-string/jumbo v2, "SlideShowViewState"

    const-string/jumbo v3, "try to start service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v3, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "key_display_id"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v4, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->setSlideShowContent(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideShowMode(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SlideShowViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-ne p2, v5, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;->isServiceRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsPresentationStarted:Z

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->finishCurrentViewState()V

    goto/16 :goto_0

    :pswitch_1
    iget v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mFlags:I

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    if-nez v2, :cond_4

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsBackFromSlideShowSettingView:Z

    :cond_4
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideshowPauseViewEnable(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    :cond_5
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->hideBars(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewInitialize()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "SlideShowViewState"

    const-string/jumbo v1, "onViewInitialize start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mHasPermission:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExternalDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsFullScreen:Z

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMassSlideshow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$4;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-nez v0, :cond_6

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIgnoreHideActionBarForVideoPlay:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->hide()V

    :cond_3
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIgnoreHideActionBarForVideoPlay:Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsBackFromSlideShowSettingView:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->show()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mFlags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mFlags:I

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mIsBackFromSlideShowSettingView:Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mAdapter:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAdapter(Lcom/sec/samsung/gallery/glview/GlBaseAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    new-instance v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState$5;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/GlAbsListView$OnItemClickListener;)V

    goto :goto_1
.end method

.method public releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->clearKeepScreenOnFlag(Landroid/app/Activity;)V

    return-void
.end method

.method public setSlideShowMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/app/GalleryApp;->setSlideShowMode(Z)V

    return-void
.end method

.method public setSlideshowPauseViewVisible()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setPauseView(Z)V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->setSlideshowPauseViewEnable(Z)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p2

    check-cast v1, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    const-string/jumbo v6, "SlideShowViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Event update ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_SLIDESHOW_RESUME:I

    if-eq v2, v6, :cond_0

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SLIDESHOW_RESUME:I

    if-ne v2, v6, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->resumeSlideShow()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_NEW_SLIDESHOW:Z

    if-nez v6, :cond_1

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_SLIDESHOW_SETTING:I

    if-ne v2, v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v7, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v6, "isMultiWindow"

    sget-boolean v7, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->USE_MULTIWINDOW:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "7011"

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SlideShowViewState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1
.end method
