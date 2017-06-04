.class public Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final LEFT_SIDE:I = 0x2

.field public static final RIGHT_SIDE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ToolkitController"

.field public static final WITHOUT_ANIMATION:I = 0x3

.field public static final WITHOUT_ANIMATION_AFTER_SHOW_HANDLE:I = 0x5

.field public static final WITHOUT_ANIMATION_CLOSE_ALL:I = 0x4

.field public static final WITH_ANIMATION_AFTER_SHOW_HANDLE:I = 0x1

.field public static final WITH_FADE_OUT_AFTER_NO_HANDLE:I = 0x2


# instance fields
.field private CAMERA_SHUTTER_OGG:Ljava/lang/String;

.field final CLICK_CRITERION:I

.field final HANDLE_IDLE_OPACITY:F

.field public isDestroyed:Z

.field isGameApp:Z

.field isHelperWndAdded:Z

.field isKeyLockWndAdded:Z

.field isMobileKeyboadrdOn:Z

.field isOnResume:Z

.field private isPerformanceGameModeOn:Z

.field public isShowRecentApps:Z

.field private mApplicationContext:Landroid/content/Context;

.field private mCaptureEffectLayout:Landroid/view/View;

.field private mCurrentOrientation:I

.field private mCurrentPackageName:Ljava/lang/String;

.field private mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

.field private mFloatingSide:I

.field private mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

.field private mGuideListener:Landroid/view/View$OnClickListener;

.field mGuideRunnable:Ljava/lang/Runnable;

.field private mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

.field mHandleAutoTransparencyChange:Ljava/lang/Runnable;

.field private mHandleLine:I

.field private mHandlePosition:F

.field mHandlePositionReporter:Ljava/lang/Runnable;

.field mHandleThrowAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mHeightHelperWnd:Landroid/widget/LinearLayout;

.field private mIgnoreTouch:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

.field private mIsIntroShown:Z

.field private mIsReservedHiddenToast:Z

.field private mIsShowKeyLockStatus:Z

.field private mIsStatusBarOn:Z

.field private mKeyLockPressCnt:I

.field private mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

.field mMoveSoFarFromTouchPoint:Z

.field private mMovingPosition:Landroid/graphics/Point;

.field public mRecentAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

.field private mResoution:Landroid/graphics/Point;

.field mScreenShotBitmap:Landroid/graphics/Bitmap;

.field private final mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

.field public mStatusBarHeight:I

.field private mStressTest:Z

.field mStressTestRunnable:Ljava/lang/Runnable;

.field private mToolsMoveCnt:I

.field private mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

.field mTopMenuPostDelayedOpenRunnable:Ljava/lang/Runnable;

.field private mTouchPosition:Landroid/graphics/Point;

.field mValueAnimator:Landroid/animation/ValueAnimator;

.field public themeContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->CLICK_CRITERION:I

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->HANDLE_IDLE_OPACITY:F

    const-string/jumbo v0, "file:///system/media/audio/ui/camera_click.ogg"

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->CAMERA_SHUTTER_OGG:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isPerformanceGameModeOn:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIgnoreTouch:Z

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsShowKeyLockStatus:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsReservedHiddenToast:Z

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mToolsMoveCnt:I

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockPressCnt:I

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStressTest:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isOnResume:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isMobileKeyboadrdOn:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isKeyLockWndAdded:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMoveSoFarFromTouchPoint:Z

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$5;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleThrowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$25;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$25;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenuPostDelayedOpenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$26;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$26;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuideRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$27;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$27;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleAutoTransparencyChange:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$28;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$28;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandlePositionReporter:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$42;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStressTestRunnable:Ljava/lang/Runnable;

    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, "Instance Creation"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {p1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->themeContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isMobileKeyboadrdOn:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isShownGameToolsIntro(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsIntroShown:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mInflater:Landroid/view/LayoutInflater;

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isShowRecentApps:Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->removeScreenShotEffectLayout()V

    return-void
.end method

.method static synthetic access$108(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockPressCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockPressCnt:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsIntroShown:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->gametoolsShowNotification()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsStatusBarOn:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isPerformanceGameModeOn:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->animateIntro(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsShowKeyLockStatus:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->onHandleClick()V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showBackPressed()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showRecentPressed()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHeightHelperWnd:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsReservedHiddenToast:Z

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsReservedHiddenToast:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->doScreenShot()V

    return-void
.end method

.method private animateIntro(Landroid/view/View;)V
    .locals 6

    const/16 v0, 0x14d

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    const/16 v4, -0x64

    const/16 v5, 0x1388

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->refinePosition(II)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x10b

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;

    invoke-direct {v4, p0, p1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Landroid/view/View;Landroid/graphics/Point;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private doScreenShot()V
    .locals 7

    const/4 v5, 0x0

    const/high16 v6, 0x3e800000    # 0.25f

    const-string/jumbo v3, "ToolkitController"

    const-string/jumbo v4, "doScreenShot"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/16 v5, 0x752f

    invoke-static {v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SurfaceControlProxy;->takeScreenshot(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->doScreenShotEffect(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->saveScreenShotAndNotify(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private doScreenShotEffect(Landroid/graphics/Bitmap;)V
    .locals 10

    const-string/jumbo v5, "ToolkitController"

    const-string/jumbo v6, "doScreenShotEffect"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mInflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$layout;->view_capture_effect:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCaptureEffectLayout:Landroid/view/View;

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7d2

    const v6, 0x5000028

    const/4 v7, -0x3

    invoke-direct {v4, v5, v6, v7}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCaptureEffectLayout:Landroid/view/View;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->layout_capture_effect:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v1, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCaptureEffectLayout:Landroid/view/View;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCaptureEffectLayout:Landroid/view/View;

    const-string/jumbo v7, "Capture Effect Layout"

    invoke-virtual {v5, v6, v4, v7}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$14;

    invoke-direct {v6, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$14;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V

    const/4 v5, 0x0

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;

    invoke-direct {v6, p0, v0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    const-wide/16 v8, 0x1e

    invoke-static {v5, v6, v8, v9}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private gametoolsShowNotification()V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/high16 v9, 0x8000000

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string/jumbo v7, "ToolkitController"

    const-string/jumbo v8, "gametoolsShowNotification"

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isOnResume:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->closeGametoolsNotification()V

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-class v8, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v7, "type"

    const/16 v8, 0x3ec

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-class v8, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v7, "type"

    const/16 v8, 0x3eb

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v7, v12, v1, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v7, v11, v2, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$Action$Builder;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v10, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_SHOW:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v6}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->gametools_noti:I

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_MBODY_GAME_TOOLS:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_SBODY_TAP_HERE_TO_SHOW_GAME_TOOLS_AS_A_FLOATING_BUTTON:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v9, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_SBODY_TAP_HERE_TO_SHOW_GAME_TOOLS_AS_A_FLOATING_BUTTON:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/16 v7, 0x3086

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method public static getDpToPix(Landroid/content/Context;D)I
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    float-to-double v6, v0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v1, p1, v4

    if-gez v1, :cond_0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double/2addr v2, v4

    :cond_0
    double-to-int v1, v2

    return v1
.end method

.method private onHandleClick()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, "onHandleClick"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "4011"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isOnResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideHandle(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showDrawer()Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, "onHandleClick isOnResume : false"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->destroyController()V

    goto :goto_0
.end method

.method private removeScreenShotEffectLayout()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCaptureEffectLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCaptureEffectLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCaptureEffectLayout:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCaptureEffectLayout:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private saveHandlePosition(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->refinePosition(II)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandlePosition:F

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandlePosition:F

    invoke-static {v0, v1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setToolkitHandlePosition(Landroid/content/Context;Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mFloatingSide:I

    invoke-static {v0, v1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setToolkitHandleSide(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private saveScreenShotAndNotify(Landroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getAppTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$16;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private showBackPressed()V
    .locals 14

    const-wide/16 v12, 0x1

    const/4 v11, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/16 v8, 0x8

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    const-string/jumbo v5, "ToolkitController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showBackPressed Rotation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentOrientation:I

    if-ne v5, v11, :cond_1

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_port:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land_left:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_lock:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$40;

    invoke-direct {v6, p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$40;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    if-ne v3, v11, :cond_2

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_port:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land_left:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_lock:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$41;

    invoke-direct {v6, p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$41;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land_left:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_port:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showRecentPressed()V
    .locals 14

    const-wide/16 v12, 0x1

    const/4 v11, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/16 v8, 0x8

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    const-string/jumbo v5, "ToolkitController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showRecentPressed Rotation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentOrientation:I

    if-ne v5, v11, :cond_1

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_port:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land_left:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_lock:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$38;

    invoke-direct {v6, p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$38;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    if-ne v3, v11, :cond_2

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_port:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land_left:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_lock:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$39;

    invoke-direct {v6, p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$39;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land_left:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_port:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_keylock_land:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private toastCurrentState(Z)V
    .locals 11

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v4

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/game/gamecast/common/model/SettingUtil;->get(Landroid/content/Context;)Lcom/sec/game/gamecast/common/model/SettingUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/game/gamecast/common/model/SettingUtil;->isGameHomeEnableSync()Z

    move-result v0

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoAlertsOnSystemSettings(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v4, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v3, v5

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v4, :cond_4

    move v2, v5

    :goto_1
    if-eqz p1, :cond_7

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_1
    :goto_2
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_P1SS_P2SS_ENABLED:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v10, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_DURING_GAME_ABB:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    move v3, v6

    goto :goto_0

    :cond_4
    move v2, v6

    goto :goto_1

    :pswitch_0
    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_RECENTS_KEY_LOCKED_DURING_GAMEPLAY:I

    goto :goto_2

    :pswitch_1
    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_BACK_KEY_LOCKED_DURING_GAMEPLAY:I

    goto :goto_2

    :pswitch_2
    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LOCK_RECENTS_AND_BACK_KEYS:I

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    if-nez v2, :cond_6

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_PS_ENABLED:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v9, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_DURING_GAME_ABB:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_PS_ENABLED:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    if-eqz v2, :cond_8

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v7

    packed-switch v7, :pswitch_data_1

    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_P1SS_P2SS_ENABLED:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v10, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_WHILE_USING_APP:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GHUB_TPOP_RECENTS_KEY_LOCKED_WHILE_USING_APP:I

    goto :goto_4

    :pswitch_4
    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GHUB_TPOP_BACK_KEY_LOCKED_WHILE_USING_APP:I

    goto :goto_4

    :pswitch_5
    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LOCK_RECENTS_AND_BACK_KEYS:I

    goto :goto_4

    :cond_9
    if-eqz v3, :cond_a

    if-nez v2, :cond_a

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_PS_ENABLED:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v9, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_WHILE_USING_APP:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_PS_ENABLED:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public callDisclaimerActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/sec/game/gamecast/common/activity/TNCActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method checkMobileKeyboard()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isMobileKeyboadrdOn:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isMobileKeyboadrdOn:Z

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentOrientation:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->updateLayoutByConfigurationChange(I)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isMobileKeyboadrdOn:Z

    goto :goto_0
.end method

.method checkSideChange(II)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mFloatingSide:I

    if-ne v1, v0, :cond_0

    mul-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHANDLE_HEIGHT()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ge v1, v2, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mFloatingSide:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->saveHandlePosition(II)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->refreshToChangeSide()V

    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHANDLE_HEIGHT()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_1

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mFloatingSide:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->saveHandlePosition(II)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->refreshToChangeSide()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkStatusBar(I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsStatusBarOn:Z

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsStatusBarOn:Z

    if-eqz v3, :cond_0

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStatusBarHeight:I

    :cond_0
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setResolution(Landroid/graphics/Point;I)V

    :cond_1
    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsStatusBarOn:Z

    goto :goto_0
.end method

.method public closeGametoolsNotification()V
    .locals 3

    const-string/jumbo v1, "ToolkitController"

    const-string/jumbo v2, "closeGametoolsNotification"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x3086

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/16 v1, 0x3085

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public declared-synchronized createHelperHeightWnd(Landroid/content/Context;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "ToolkitController"

    const-string/jumbo v2, "createHelperHeightWnd"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d2

    const/16 v4, 0x628

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHeightHelperWnd:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHeightHelperWnd:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "ToolkitController Height Helper Window"

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHeightHelperWnd:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v6, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized createKeyLockWnd(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isKeyLockWndAdded()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ToolkitController"

    const-string/jumbo v2, "createKeyLockWnd"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v6

    if-nez v6, :cond_2

    const/high16 v11, 0x10000000

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyLockSetting is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d6

    or-int/lit16 v4, v11, 0x628

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-direct {v1, p1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_keylock_land:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_keylock_land_left:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_keylock_port:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1, v7, v10}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1, v8, v10}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1, v9, v10}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const-string/jumbo v3, "Key Lock Window"

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    if-eq v6, v12, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->setRecentKeyAllow(ZLandroid/app/Service;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setKeyLockWndAdded(Z)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setDispatchKeyListener(Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized destroyController()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isDestroyed:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, "destroyController ignored"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, "destroyController start"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->removeCallBacks()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->unlockWithNoAction()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->reset()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeAllView()V

    invoke-static {}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager;->getInstance()Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager;->releaseList(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->setRecentKeyAllow(ZLandroid/app/Service;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCaptureEffectLayout:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuideListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCaptureEffectLayout:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHeightHelperWnd:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setKeyLockWndAdded(Z)V

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->closeGametoolsNotification()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isDestroyed:Z

    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, "destroyController end"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHandle()Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    return-object v0
.end method

.method getHandleDestination()Landroid/graphics/PointF;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isStatusBarOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStatusBarHeight:I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getHandlePosition()Landroid/graphics/Point;

    move-result-object v0

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHANDLE_HEIGHT_HALF()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandlePosition:F

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHANDLE_HEIGHT_HALF()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method getHandleLine(I)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-wide v4, 0x4041800000000000L    # 35.0

    invoke-static {v2, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    sub-int v0, v1, v2

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getDpToPix(Landroid/content/Context;D)I

    move-result v1

    rsub-int/lit8 v0, v1, 0x0

    goto :goto_0
.end method

.method getHandlePosition()Landroid/graphics/Point;
    .locals 4

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mFloatingSide:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getHandleLine(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleLine:I

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleLine:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandlePosition:F

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getKeyLockWindow()Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    return-object v0
.end method

.method public getService()Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    const-string/jumbo v2, "ToolkitController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "statusBarHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setClickable(Z)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->FULL_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$21;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$21;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->close(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->removeViewFromWindow()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->removeViewFromWindow()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->FADEOUT_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->close(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->removeViewFromWindow()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->removeViewFromWindow()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->removeHelperHeightWnd(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setResolution()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->NO_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->close(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setResolution()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->NO_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->close(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->NO_ANIM:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$22;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$22;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->close(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public hideHandle(Z)V
    .locals 3

    const-string/jumbo v0, "ToolkitController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HideHandle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->removeViewFromWindow()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideHandleTo(Landroid/graphics/Point;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    const-string/jumbo v1, "ToolkitController"

    const-string/jumbo v2, "HideHandleTo "

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->removeViewFromWindow()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->addViewToWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$18;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$18;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xf6

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v3, "x"

    new-array v4, v6, [I

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getCenterPosition()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    aput v5, v4, v7

    iget v5, p1, Landroid/graphics/Point;->x:I

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v7

    const-string/jumbo v3, "y"

    new-array v4, v6, [I

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getCenterPosition()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    aput v5, v4, v7

    iget v5, p1, Landroid/graphics/Point;->y:I

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v8

    const-string/jumbo v3, "scale"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const-string/jumbo v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$19;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$19;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$20;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$20;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    const-wide/16 v4, 0xa

    invoke-static {v1, v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    nop

    :array_0
    .array-data 4
        0x3f553f7d    # 0.833f
        0x3ebfec57    # 0.37485f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public hideMenu()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->removeViewFromWindow()V

    :cond_0
    return-void
.end method

.method initDrawerView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mFloatingSide:I

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->BUTTON6:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    iget-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isShowRecentApps:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;Z)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setResolution()V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/AppToolkitSatelite;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mFloatingSide:I

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->BUTTON6:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    iget-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isShowRecentApps:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/AppToolkitSatelite;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;Z)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    goto :goto_0
.end method

.method initHandleView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    :cond_0
    return-void
.end method

.method initMediaplayerForShutter()V
    .locals 1

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method initTopMenu()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->themeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    :cond_0
    return-void
.end method

.method public declared-synchronized initialize()V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string/jumbo v5, "ToolkitController"

    const-string/jumbo v6, "initialize"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float v1, v5, v0

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float v2, v5, v0

    const-string/jumbo v5, "ToolkitController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Screen DP Resolution : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "ToolkitController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Screen Pixel Resolution : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getStatusBarHeight()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStatusBarHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->removeCallBacks()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setResolution()V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->removeViewFromWindow()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->removeViewFromWindow()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->removeViewFromWindow()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTouchPosition:Landroid/graphics/Point;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setOrientation(I)V

    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    invoke-direct {v5}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->initDrawerView()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->initTopMenu()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->initHandleView()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->initMediaplayerForShutter()V

    iget-boolean v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :try_start_1
    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$3;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    const-wide/16 v8, 0x1388

    invoke-static {v5, v6, v8, v9}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    :try_start_2
    iget-boolean v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsReservedHiddenToast:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :try_start_3
    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$4;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    const-wide/16 v8, 0xbb8

    invoke-static {v5, v6, v8, v9}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized isKeyLockWndAdded()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isKeyLockWndAdded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isStatusBarOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsStatusBarOn:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 15

    const/4 v14, 0x1

    const-string/jumbo v2, "ToolkitController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string/jumbo v2, "ToolkitController"

    const-string/jumbo v3, ": onClick ignored mDrawer is null or not clickable"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v9

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tb_no_alerts:I

    if-ne v9, v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "ToolkitController"

    const-string/jumbo v3, "no alerts Click"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "GT14"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ToggleButton;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->themeContext:Landroid/content/Context;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    invoke-static {v2, v3, v4}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->checkPermissionAndNotificationForNoAlert(Landroid/content/Context;ZZ)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setNoAlerts(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoAlertsOnSystemSettings(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_NO_ALERTS_DURING_GAME_ENABLED_MSG:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-virtual {p0, v12}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GHUB_TPOP_NO_ALERTS_WHILE_USING_APP_ENABLED_ALL_NOTIFICATIONS_WILL_BE_MUTED_AND_HIDDEN_WHILE_USING_APP_ONLY_INCOMING_CALLS_WILL_BE_SHOWN:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_THIS_APP_DOES_NOT_SUPPORT_PS_FUNCTION_OF_GAME_TOOLS:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_DURING_GAME_ABB:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_THIS_APP_DOES_NOT_SUPPORT_PS_FUNCTION_OF_GAME_TOOLS:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_WHILE_USING_APP:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_6
    check-cast p1, Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setNoAlerts(Z)V

    goto/16 :goto_0

    :cond_8
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tb_gamelock:I

    if-ne v9, v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideHandle(Z)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$6;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iget-boolean v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->lock(Ljava/lang/Runnable;Z)V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->setRecentKeyAllow(ZLandroid/app/Service;)V

    const-string/jumbo v2, "ToolkitController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screenLock Log :GT27 , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "GT27"

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_9
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tb_record:I

    if-ne v9, v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "ToolkitController"

    const-string/jumbo v3, "record Click"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "GT11"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->getProfileSource(Landroid/content/Context;)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->themeContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->checkPermissionAndNotificationForRecord(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->closeGametoolsNotification()V

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;

    invoke-direct {v3, p0, v13}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;I)V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v2, "4025"

    const-string/jumbo v3, "1"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :pswitch_1
    const-string/jumbo v2, "4025"

    const-string/jumbo v3, "2"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :pswitch_2
    const-string/jumbo v2, "4025"

    const-string/jumbo v3, "3"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_a
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tb_key_lock:I

    if-ne v9, v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string/jumbo v2, "ToolkitController"

    const-string/jumbo v3, "keylock Click"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "GT18"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    check-cast p1, Landroid/widget/ToggleButton;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLock(Landroid/content/Context;Z)V

    const-string/jumbo v2, "4022"

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->createKeyLockWnd(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v11

    if-nez v11, :cond_c

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    if-eqz v2, :cond_b

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_RECENTS_KEY_LOCKED_DURING_GAMEPLAY:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(I)V

    goto/16 :goto_0

    :cond_b
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GHUB_TPOP_RECENTS_KEY_LOCKED_WHILE_USING_APP:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(I)V

    goto/16 :goto_0

    :cond_c
    if-ne v11, v14, :cond_e

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    if-eqz v2, :cond_d

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_BACK_KEY_LOCKED_DURING_GAMEPLAY:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(I)V

    goto/16 :goto_0

    :cond_d
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GHUB_TPOP_BACK_KEY_LOCKED_WHILE_USING_APP:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(I)V

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x2

    if-ne v11, v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    if-eqz v2, :cond_f

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_RECENTS_AND_BACK_KEYS_LOCKED_DURING_GAMEPLAY:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(I)V

    goto/16 :goto_0

    :cond_f
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GHUB_TPOP_RECENTS_AND_BACK_KEYS_LOCKED_WHILE_USING_APP:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(I)V

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->removeKeyLockWnd(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLock(Landroid/content/Context;Z)V

    const-string/jumbo v2, "4022"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_11
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->root:I

    if-ne v9, v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string/jumbo v2, "ToolkitController"

    const-string/jumbo v3, "background Click"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setClickable(Z)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStressTest:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStressTestRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x5dc

    invoke-static {v2, v3, v4, v5}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V

    goto/16 :goto_0

    :cond_12
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tb_settings:I

    if-ne v9, v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string/jumbo v2, "ToolkitController"

    const-string/jumbo v3, "settings Click"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "GT10"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v2, "4026"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.game.gamehome.action.TOOLSSETTING"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v10, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "deeplink"

    const-string/jumbo v3, "FRAGMENT_GAME_TOOLS_FLOATING"

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_13
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tb_screenshot:I

    if-ne v9, v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string/jumbo v2, "ToolkitController"

    const-string/jumbo v3, "screenshot click"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "GT12"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v2, "4024"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->isAvailableCapacity(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_14

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_POP_UNABLE_TO_CAPTURE_THE_SCREEN_DELETE_SOME_FILES_AND_TRY_AGAIN:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(I)V

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->themeContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->checkPermissionAndNotificationForScreenShot(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$8;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    goto/16 :goto_0

    :cond_15
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->ln_recent1:I

    if-ne v9, v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setClickable(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x1

    :try_start_2
    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$9;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    goto/16 :goto_0

    :cond_16
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->ln_recent2:I

    if-ne v9, v2, :cond_17

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setClickable(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x1

    :try_start_4
    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$10;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v8

    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    goto/16 :goto_0

    :cond_17
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->ln_recent3:I

    if-ne v9, v2, :cond_18

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setClickable(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v2, 0x1

    :try_start_6
    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$11;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v8

    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    goto/16 :goto_0

    :cond_18
    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->ln_launcher:I

    if-ne v9, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setClickable(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$12;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$13;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$13;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "GT26"

    sget-object v5, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_NONE:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v2, "ToolkitController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gamelauncher shortcut Log :GT26 , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_NONE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v8

    :try_start_9
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIgnoreTouch:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTouchPosition:Landroid/graphics/Point;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTouchPosition:Landroid/graphics/Point;

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMoveSoFarFromTouchPoint:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->isViewAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleAutoTransparencyChange:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/GTHandler;->removeCallbacks(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setHandleScale(FI)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenuPostDelayedOpenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIgnoreTouch:Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTouchPosition:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->reset(FF)V

    goto/16 :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIgnoreTouch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    if-nez v0, :cond_6

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    :goto_2
    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsStatusBarOn:Z

    if-eqz v0, :cond_4

    iget v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStatusBarHeight:I

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHANDLE_HEIGHT_HALF()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHANDLE_HEIGHT_HALF()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v7

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setPosition(IIZ)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->reportHandlePosition(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMoveSoFarFromTouchPoint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTouchPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDistanceBetweenPoint(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMoveSoFarFromTouchPoint:Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_2

    :pswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIgnoreTouch:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->isViewAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    if-nez v0, :cond_7

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    :cond_7
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenuPostDelayedOpenRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/GTHandler;->removeCallbacks(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMoveSoFarFromTouchPoint:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->hide(Z)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->onHandleClick()V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$43;->$SwitchMap$com$samsung$android$game$gametools$floatingui$toolkit$ToolkitTopMenu$Section:[I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->getCurrencSection()Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->hide(Z)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT09"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "4016"

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->getHideDestination()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideHandleTo(Landroid/graphics/Point;)V

    goto :goto_3

    :pswitch_6
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mToolsMoveCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mToolsMoveCnt:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->saveHandlePosition(II)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->checkSideChange(II)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->putPoint(II)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->startHandlePositionReporting()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleThrowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setHandleScale(FI)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getHandleDestination()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->startValueAnimation(Landroid/graphics/PointF;)V

    goto/16 :goto_3

    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMoveSoFarFromTouchPoint:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->onHandleClick()V

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mToolsMoveCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mToolsMoveCnt:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->saveHandlePosition(II)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->checkSideChange(II)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMovingPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->putPoint(II)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->startHandlePositionReporting()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleThrowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setHandleScale(FI)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getHandleDestination()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->startValueAnimation(Landroid/graphics/PointF;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public playCameraShutterSound()V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-float v5, v3

    int-to-float v6, v2

    div-float v4, v5, v6

    if-eqz v3, :cond_0

    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->CAMERA_SHUTTER_OGG:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$29;

    invoke-direct {v6, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$29;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$30;

    invoke-direct {v6, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$30;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public playCameraShutterVibrate()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/16 v1, 0xc8

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public declared-synchronized refresh()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->initialize()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, ": refresh : gameTools On"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isShowGameTools(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, ": refresh : showTools On"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x6f

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showHandle(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, ": refresh : showTools Off"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->gametoolsShowNotification()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, ": refresh : gameTools Off"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public refreshToChangeSide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mFloatingSide:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->changeSide(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setResolution()V

    return-void
.end method

.method public removeCallBacks()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/sec/game/gamecast/common/utility/GTHandler;->removeCallbacksAndMessages()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeHelperHeightWnd(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "ToolkitController"

    const-string/jumbo v3, "removeHelperHeightWnd"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHeightHelperWnd:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHeightHelperWnd:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ToolkitController"

    const-string/jumbo v3, "removeHelperHeightWnd layout already removed ~!!"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z

    goto :goto_0
.end method

.method public declared-synchronized removeKeyLockWnd(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "ToolkitController"

    const-string/jumbo v2, "removeKeyLockWnd"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->setRecentKeyAllow(ZLandroid/app/Service;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockWindow:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setKeyLockWndAdded(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "ToolkitController"

    const-string/jumbo v2, "removeKeyLockWnd layout already removed ~!!"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setKeyLockWndAdded(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setHandlePosition()V
    .locals 4

    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, "setHandlePosition"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mFloatingSide:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getHandleLine(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleLine:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleLine:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandlePosition:F

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setPosition(IIZ)V

    return-void
.end method

.method setHandleScale(FI)V
    .locals 5

    const v4, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    const v0, 0x3f555555

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mFloatingSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHANDLE_HEIGHT_HALF()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    :goto_0
    if-eqz p2, :cond_3

    cmpl-float v1, p1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHANDLE_HEIGHT()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHANDLE_HEIGHT_HALF()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_3
    cmpl-float v1, p1, v3

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    mul-float v2, v3, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    mul-float v2, v3, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1
.end method

.method public declared-synchronized setIsGameOn(Ljava/lang/String;ZZ)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isOnResume:Z

    iput-boolean p3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/game/gamecast/common/model/SettingData;->isPerformanceGameModeOn(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isPerformanceGameModeOn:Z

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v3

    const-string/jumbo v5, "ToolkitController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isOnResume : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isGameApp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2

    if-eqz v3, :cond_0

    const-string/jumbo v5, "KILL_YOURSELF"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "4017"

    iget v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mToolsMoveCnt:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v8, v9}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "4019"

    iget v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockPressCnt:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v8, v9}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->destroyController()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isDestroyed:Z

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mToolsMoveCnt:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockPressCnt:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsReservedHiddenToast:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    iget-boolean v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isShowRecentApps:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_3

    :try_start_2
    invoke-static {}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager;->getInstance()Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager;->getRecentAppList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_1
    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/model/SettingData;->getGamePID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->getInstance()Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->getPidFromPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    if-eq v4, v1, :cond_5

    :cond_4
    invoke-direct {p0, p3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toastCurrentState(Z)V

    :cond_5
    if-eqz v3, :cond_8

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/game/gamecast/common/model/SettingData;->isShowGameTools(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/game/gamecast/common/model/SettingData;->getGameToolsHiddenViCnt(Landroid/content/Context;)I

    move-result v0

    rem-int/lit8 v5, v0, 0xa

    if-nez v5, :cond_6

    const-string/jumbo v5, "ToolkitController"

    const-string/jumbo v6, "reserve HiddenToast"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsReservedHiddenToast:Z

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    add-int/lit8 v6, v0, 0x1

    rem-int/lit8 v6, v6, 0xa

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/model/SettingData;->setGameToolsHiddenViCnt(Landroid/content/Context;I)V

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->createHelperHeightWnd(Landroid/content/Context;)V

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-static {v5, v6, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setGamePID(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->createKeyLockWnd(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_0
    move-exception v2

    :try_start_4
    const-string/jumbo v5, "ToolkitController"

    const-string/jumbo v6, "recent Apps Error"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setKeyLockWndAdded(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isKeyLockWndAdded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNoAlerts(Z)V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    const-string/jumbo v0, "ToolkitController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNoAlerts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT17"

    if-eqz p1, :cond_2

    const-wide/16 v4, 0x3e8

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "4021"

    if-eqz p1, :cond_0

    const-wide/16 v6, 0x1

    :cond_0
    invoke-static {v0, v3, v6, v7}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/game/gamecast/common/model/SettingData;->setNoAlertsOn(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->requestNoAlertsOnRuntime(ZLjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->themeContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_THIS_APP_DOES_NOT_SUPPORT_PS_FUNCTION_OF_GAME_TOOLS:I

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_WHILE_USING_APP:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    move-wide v4, v6

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentOrientation:I

    return-void
.end method

.method setResolution()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsStatusBarOn:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStatusBarHeight:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setResolution(Landroid/graphics/Point;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDrawer()Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, "showDrawer"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->open(Z)V

    :cond_0
    return v2
.end method

.method public showGuide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, "mDetectorHandler:showGuide"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isPerformanceGameModeOn:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->setGameMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->getLayout()Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$33;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$33;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setDispatchKeyListener(Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;)V

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$34;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuideListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuideListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->setListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->show()V

    :cond_0
    return-void
.end method

.method public showGuideDelayed(J)V
    .locals 3

    const-string/jumbo v1, "ToolkitController"

    const-string/jumbo v2, "showGuideDelayed"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuideRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2, p1, p2}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showHandle(I)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isOnResume:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ToolkitController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ShowHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/model/SettingData;->getToolkitHandlePosition(Landroid/content/Context;Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandlePosition:F

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/model/SettingData;->getToolkitHandleSide(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mFloatingSide:I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setResolution()V

    iget-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsIntroShown:Z

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$17;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$17;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v3, v4, v5}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDrawer:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    iget v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mFloatingSide:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->changeSide(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/16 v3, 0x6f

    if-ne p1, v3, :cond_3

    :try_start_2
    const-string/jumbo v3, "ToolkitController"

    const-string/jumbo v4, "ShowHandle : SHOW_FIRST_ANIM"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleAutoTransparencyChange:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/utility/GTHandler;->removeCallbacks(ILjava/lang/Runnable;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->addViewToWindow()V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setHandleScale(FI)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setHandlePosition()V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleAutoTransparencyChange:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-static {v3, v4, v6, v7}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move v1, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v3, "ToolkitController"

    const-string/jumbo v4, "mDrawer is null"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 v3, 0xde

    if-ne p1, v3, :cond_4

    :try_start_3
    const-string/jumbo v3, "ToolkitController"

    const-string/jumbo v4, "ShowHandle : SHOW_IMMEDIATE_ANIM"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleAutoTransparencyChange:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/utility/GTHandler;->removeCallbacks(ILjava/lang/Runnable;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->addViewToWindow()V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setHandleScale(FI)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setHandlePosition()V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleAutoTransparencyChange:Ljava/lang/Runnable;

    const-wide/16 v6, 0xa7

    invoke-static {v3, v4, v6, v7}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v3, "ToolkitController"

    const-string/jumbo v4, "ShowHandle : NO_ANIM"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleAutoTransparencyChange:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/utility/GTHandler;->removeCallbacks(ILjava/lang/Runnable;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->addViewToWindow()V

    const v3, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setHandleScale(FI)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setHandlePosition()V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    const v3, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setHandleScale(FI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2
.end method

.method showIntro()V
    .locals 5

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const-string/jumbo v1, "ToolkitController"

    const-string/jumbo v2, "showIntro"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsIntroShown:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->show()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->ll_handle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHANDLE_HEIGHT_HALF()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHANDLE_HEIGHT_HALF()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHANDLE_HEIGHT_HALF()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResoution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHANDLE_HEIGHT_HALF()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$35;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$35;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public showRecordingGuide(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, "showRecordingGuide"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/sec/game/gamecast/common/model/SettingData;->setNoneRecordingGuideShown(Landroid/content/Context;Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->getLayout()Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$31;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$31;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setDispatchKeyListener(Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;)V

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$32;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$32;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;I)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuideListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuideListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->setListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/sec/game/gamecast/common/model/SettingData;->setRecordingGuideShown(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method startHandlePositionReporting()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandlePositionReporter:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startNoneRecording()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->recordButtonClicked()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$37;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$37;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->showRecordStartAnim(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;)V

    return-void
.end method

.method stopHandlePositionReporting()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandlePositionReporter:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/GTHandler;->removeCallbacks(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method toast(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$24;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$24;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method toast(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$23;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$23;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateLayoutByConfigurationChange(I)V
    .locals 2

    const-string/jumbo v0, "ToolkitController"

    const-string/jumbo v1, "updateLayoutByConfigurationChange"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->checkMobileKeyboard()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->refresh()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->setOrientation(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->setOrientation(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isGuideShown(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showGuideDelayed(J)V

    goto :goto_0
.end method
