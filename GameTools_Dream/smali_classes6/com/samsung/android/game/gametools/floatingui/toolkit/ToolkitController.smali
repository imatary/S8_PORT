.class public Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;
.implements Lcom/sec/game/gamecast/common/utility/CafeDataListener;


# static fields
.field public static final LEFT_SIDE:I = 0x2

.field public static final NOT_SHOW_HANDLE:Z = false

.field public static final RECORD_HIDE_MAIN_VIEW_DURATION:J = 0x1f4L

.field public static final RIGHT_SIDE:I = 0x1

.field public static final SCREENSHOT_HIDE_MAIN_VIEW_DURATION:J = 0x1f4L

.field public static final SHOW_HANDLE:Z = true

.field public static final TOUCH_ROOT_VIEW_HIDE_MAIN_VIEW_DURATION:J = 0x1f4L

.field public static final isSupportNaverPlug:Z = true


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isDestroyed:Z

.field private volatile isGameApp:Z

.field private volatile isHelperWndAdded:Z

.field private volatile isMobileKeyboadrdOn:Z

.field public volatile isNaverInitialized:Z

.field public volatile isOnResume:Z

.field private isPerformanceGameModeOn:Z

.field public volatile isRecording:Z

.field private mApplicationContext:Landroid/content/Context;

.field private mBubbleGuide:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;

.field private mBubbleGuideRunnable:Ljava/lang/Runnable;

.field private mCafeUtil:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

.field private volatile mCurrentOrientation:I

.field private mCurrentPackageName:Ljava/lang/String;

.field private mDisplayChangeListener:Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;

.field private mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

.field private mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

.field private mGuideListener:Landroid/view/View$OnClickListener;

.field private mGuideRunnable:Ljava/lang/Runnable;

.field private mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

.field private mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

.field private mHeightHelperWnd:Landroid/widget/LinearLayout;

.field private mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

.field private mIsReservedHiddenToast:Z

.field private mIsStatusBarOn:Z

.field private final mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

.field private mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

.field public mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

.field private mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

.field private mResolution:Landroid/graphics/Point;

.field private mScreenShotModule:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

.field private final mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

.field private mStatusBarHeight:I

.field public mThemeContext:Landroid/content/Context;

.field private mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

.field private mTopMenuPostDelayedOpenRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotModule:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mBubbleGuide:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isPerformanceGameModeOn:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsReservedHiddenToast:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isMobileKeyboadrdOn:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isOnResume:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isNaverInitialized:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isRecording:Z

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$3;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$4;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenuPostDelayedOpenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$16;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuideRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$17;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mBubbleGuideRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$23;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$23;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Instance Creation"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {p1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isMobileKeyboadrdOn:Z

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    new-instance v0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCafeUtil:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsReservedHiddenToast:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsReservedHiddenToast:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mBubbleGuide:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mBubbleGuide:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->onHandleClick()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->doScreenShot()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;)Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isPerformanceGameModeOn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHeightHelperWnd:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->gametoolsShowNotification()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenuPostDelayedOpenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mBubbleGuideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private doBackKeyLock(Landroid/view/View;)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT18"

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLock(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLockSettings(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    const-string/jumbo v0, "4102"

    const-wide/16 v4, 0x1

    invoke-static {v0, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_BACK_KEY_LOCKED_DURING_GAMEPLAY:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(I)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->createKeyLockWnd()V

    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLockSettings(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->removeKeyLockWnd()V

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GHUB_TPOP_BACK_KEY_LOCKED_WHILE_USING_APP:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v6

    if-ne v6, v7, :cond_4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLock(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->removeKeyLockWnd()V

    goto :goto_3

    :cond_4
    if-ne v6, v9, :cond_5

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLockSettings(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->removeKeyLockWnd()V

    :cond_5
    const-string/jumbo v0, "4102"

    invoke-static {v0, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2
.end method

.method private doNoAlert(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no alerts Click"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT14"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v0, p1

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    invoke-static {v0, v8, v1}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->checkPermissionAndNotificationForNoAlert(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setNoAlerts(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoAlertsOnSystemSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_NO_ALERTS_DURING_GAME_ENABLED_MSG:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-direct {p0, v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GHUB_TPOP_NO_ALERTS_WHILE_USING_APP_ENABLED_ALL_NOTIFICATIONS_WILL_BE_MUTED_AND_HIDDEN_WHILE_USING_APP_ONLY_INCOMING_CALLS_WILL_BE_SHOWN:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_THIS_APP_DOES_NOT_SUPPORT_PS_FUNCTION_OF_GAME_TOOLS:I

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_DURING_GAME_ABB:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_THIS_APP_DOES_NOT_SUPPORT_PS_FUNCTION_OF_GAME_TOOLS:I

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_WHILE_USING_APP:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1, v7}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v7}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setNoAlerts(Z)V

    goto :goto_1
.end method

.method private doRecentKeyLock(Landroid/view/View;)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT18"

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLock(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLockSettings(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    const-string/jumbo v0, "4101"

    const-wide/16 v4, 0x1

    invoke-static {v0, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_RECENTS_KEY_LOCKED_DURING_GAMEPLAY:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(I)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->createKeyLockWnd()V

    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v6

    if-ne v6, v7, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLockSettings(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->removeKeyLockWnd()V

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GHUB_TPOP_RECENTS_KEY_LOCKED_WHILE_USING_APP:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v6

    if-nez v6, :cond_4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLock(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->removeKeyLockWnd()V

    goto :goto_3

    :cond_4
    if-ne v6, v9, :cond_5

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLockSettings(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->removeKeyLockWnd()V

    :cond_5
    const-string/jumbo v0, "4101"

    invoke-static {v0, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2
.end method

.method private doScreenShot()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotModule:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "doScreenShot"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotModule:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getAppTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$11;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->doScreenShot(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private gametoolsShowNotification()V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/high16 v9, 0x8000000

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "gametoolsShowNotification"

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

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

    sget v7, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->stat_gametools_nmr:I

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

.method private initScreenShotModule()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotModule:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotModule:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    :cond_0
    return-void
.end method

.method private declared-synchronized onHandleClick()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHandleClick"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isOnResume:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "4011"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->hideHandle(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->show(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHandleClick isOnResume : false"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->destroyController()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private refreshToChangeSide(I)V
    .locals 0

    return-void
.end method

.method private removeCallBacks()V
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

.method private startRecordModule()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isOnResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getRecordModule(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getAppTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->createRecordButtonAndStart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private toast(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$14;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$14;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$13;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$13;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private toastCurrentState(Z)V
    .locals 14

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "toastCurrentState"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/game/gamecast/common/model/SettingUtil;->get(Landroid/content/Context;)Lcom/sec/game/gamecast/common/model/SettingUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/game/gamecast/common/model/SettingUtil;->isGameHomeEnableSync()Z

    move-result v0

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoAlertsOnSystemSettings(Landroid/content/Context;)Z

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoAlertsOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v6, :cond_4

    if-nez v7, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    const/4 v2, 0x1

    :goto_1
    if-nez v6, :cond_1

    if-eqz v5, :cond_1

    if-nez p1, :cond_1

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_THIS_APP_DOES_NOT_SUPPORT_PS_FUNCTION_OF_GAME_TOOLS:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_WHILE_USING_APP:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_8

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_2
    :goto_2
    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v9, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_P1SS_P2SS_ENABLED:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v12, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_BODY_NO_ALERTS_DURING_GAME:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v11, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_0
    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LOCK_RECENTS_KEY:I

    goto :goto_2

    :pswitch_1
    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LOCK_BACK_KEY:I

    goto :goto_2

    :pswitch_2
    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LOCK_RECENTS_AND_BACK_KEYS:I

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v9, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_PS_ENABLED:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v12, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_BODY_NO_ALERTS_DURING_GAME:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v9, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_PS_ENABLED:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v11, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    if-eqz v2, :cond_9

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v8

    packed-switch v8, :pswitch_data_1

    :cond_9
    :goto_4
    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v9, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_P1SS_P2SS_ENABLED:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v12, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_WHILE_USING_APP:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v11, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LOCK_RECENTS_KEY:I

    goto :goto_4

    :pswitch_4
    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LOCK_BACK_KEY:I

    goto :goto_4

    :pswitch_5
    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LOCK_RECENTS_AND_BACK_KEYS:I

    goto :goto_4

    :cond_a
    if-eqz v4, :cond_b

    if-nez v2, :cond_b

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v9, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_PS_ENABLED:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v12, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_WHILE_USING_APP:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    sget v9, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_PS_ENABLED:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v11, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(Ljava/lang/String;)V

    goto/16 :goto_3

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

    const-class v2, Lcom/sec/game/gamecast/common/activity/DreamTNCActivity;

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

.method public checkStatusBar(I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsStatusBarOn:Z

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResolution:Landroid/graphics/Point;

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

.method public closeDreamToolsGuide()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;->removeLayoutFromWindow()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public closeGametoolsNotification()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "closeGametoolsNotification"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

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

.method public closeRecordingGuide()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;->removeLayoutFromWindow()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized createHelperHeightWnd()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createHelperHeightWnd"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

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

.method public declared-synchronized destroyController()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isDestroyed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "destroyController ignored"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "destroyController start"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->removeCallBacks()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDisplayChangeListener:Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDisplayChangeListener:Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDisplayChangeListener:Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->hide(ZJLjava/lang/Runnable;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->unlockWithNoAction()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->reset()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeAllView()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->setRecentKeyAllow(ZLandroid/app/Service;)V

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuideListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResolution:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mBubbleGuide:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotModule:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotModule:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->release()V

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mScreenShotModule:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHeightHelperWnd:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->setKeyLockWndAdded(Z)V

    const-string/jumbo v1, ""

    sput-object v1, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->mPrevScreen:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->closeGametoolsNotification()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isDestroyed:Z

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "destroyController end"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCurrentPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getHandle()Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    return-object v0
.end method

.method public getKeyLockModule()Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    return-object v0
.end method

.method public declared-synchronized getOrientation()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getService()Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStatusBarHeight:I

    return v0
.end method

.method public hideHandle(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->hideHandle(Z)V

    :cond_0
    return-void
.end method

.method public hideMainView(ZJLjava/lang/Runnable;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideMainView"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    if-nez p4, :cond_0

    new-instance p4, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$12;

    invoke-direct {p4, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$12;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->hide(ZJLjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->hide(ZJLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method initDrawerView()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setResolution()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->getInstance(Landroid/content/Context;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    :cond_0
    return-void
.end method

.method initHandleView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;-><init>(Landroid/content/Context;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setHandleEventListener(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setToolsMoveCnt(I)V

    :cond_0
    return-void
.end method

.method initTopMenu()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    :cond_0
    return-void
.end method

.method public declared-synchronized initialize()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "initialize"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

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

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

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

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStatusBarHeight:I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->removeCallBacks()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setResolution()V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->removeViewFromWindow()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->removeViewFromWindow()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mBubbleGuide:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mBubbleGuide:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->remove()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mBubbleGuide:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->initTopMenu()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->initHandleView()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->initDrawerView()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->initScreenShotModule()V

    iget-boolean v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :try_start_1
    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

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
    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

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

.method public isStatusBarOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsStatusBarOn:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCheckedChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->doNoAlert(Landroid/view/View;)V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "tag_no_alert_mainsw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "tag_recent_key_lock_mainsw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "tag_back_key_lock_mainsw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->doRecentKeyLock(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->doBackKeyLock(Landroid/view/View;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4510bdbe -> :sswitch_2
        0x4b3dc9f2 -> :sswitch_1
        0x79451d39 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_root:I

    if-ne v7, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "background Click"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v2, 0x1f4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideMainView(ZJLjava/lang/Runnable;)V

    :cond_0
    :goto_1
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$id;->sw_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Switch;

    invoke-virtual {v9}, Landroid/widget/Switch;->toggle()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_1
    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_screen_touch_lock:I

    if-ne v7, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "screenLock Click"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideHandle(Z)V

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideMainView(ZJLjava/lang/Runnable;)V

    sget-boolean v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->isLocked:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$5;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->lock(Ljava/lang/Runnable;Z)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->setRecentKeyAllow(ZLandroid/app/Service;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenLock Log :GT27 , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT27"

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "4035"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_5
    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_record:I

    if-ne v7, v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "record Click"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT11"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getProfileSource(Landroid/content/Context;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->checkPermissionAndNotificationForRecord(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->closeGametoolsNotification()V

    const/4 v0, 0x0

    const-wide/16 v2, 0x1f4

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$6;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideMainView(ZJLjava/lang/Runnable;)V

    goto/16 :goto_1

    :pswitch_0
    const-string/jumbo v0, "4025"

    const-string/jumbo v1, "1"

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    :pswitch_1
    const-string/jumbo v0, "4025"

    const-string/jumbo v1, "2"

    const-wide/16 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    :pswitch_2
    const-string/jumbo v0, "4025"

    const-string/jumbo v1, "3"

    const-wide/16 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    :cond_6
    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_settings:I

    if-ne v7, v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "settings Click"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideMainView(ZJLjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT10"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "4026"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.game.gamehome.action.TOOLSSETTING"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "deeplink"

    const-string/jumbo v1, "FRAGMENT_GAME_TOOLS_FLOATING"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_screenshot:I

    if-ne v7, v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "screenshot click"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT12"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "4024"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot;->isAvailableCapacity()Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_POP_UNABLE_TO_CAPTURE_THE_SCREEN_DELETE_SOME_FILES_AND_TRY_AGAIN:I

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toast(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mThemeContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->checkPermissionAndNotificationForScreenShot(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-wide/16 v2, 0x1f4

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$7;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideMainView(ZJLjava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_9
    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_gamelauncher:I

    if-ne v7, v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ln_launcher Click"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$8;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$9;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT26"

    sget-object v3, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_NONE:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "4034"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gamelauncher shortcut Log :GT26 , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/game/gamecast/common/constant/BigData;->BIGDATA_NONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideMainView(ZJLjava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_a
    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_plug:I

    if-ne v7, v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$10;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10

    const-wide/16 v8, 0x1f4

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDispatchKeyEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v4, v8, v9, v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideMainView(ZJLjava/lang/Runnable;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-virtual {p0, v4, v8, v9, v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideMainView(ZJLjava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->getKeyLockWindow()Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->getKeyLockWindow()Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public declared-synchronized refresh()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->initialize()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, ": refresh : gameTools On"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isShowGameTools(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, ": refresh : showTools On"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->showHandle(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, ": refresh : showTools Off"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->gametoolsShowNotification()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, ": refresh : gameTools Off"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public removeHelperHeightWnd()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removeHelperHeightWnd"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removeHelperHeightWnd layout already removed ~!!"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isHelperWndAdded:Z

    goto :goto_0
.end method

.method public removeOtherGuides()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->closeRecordingGuide()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->closeDreamToolsGuide()V

    return-void
.end method

.method public response(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v1, "p2dihtj839IouAF8FaVr"

    const-string/jumbo v2, "FtSk_afUPd"

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/naver/glink/android/sdk/samsung/SPlug;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    const-string/jumbo v0, "SPLUG_GAMETOOLS"

    const-string/jumbo v1, "SPlug.init()"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/samsung/SPlug;->getOnLifeCycleListener()Lcom/naver/glink/android/sdk/samsung/SPlug$OnLifeCycleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/samsung/SPlug$OnLifeCycleListener;->onResume()V

    const-string/jumbo v0, "SPLUG_GAMETOOLS"

    const-string/jumbo v1, "SPlug.getOnLifeCycleListener().onResume()"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isNaverInitialized:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-virtual {v0, v6}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setNaverCafeFeature(Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setIsGameOn(Ljava/lang/String;ZZ)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isOnResume:Z

    iput-boolean p3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isPerformanceGameModeOn(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isPerformanceGameModeOn:Z

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResolution:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isOnResume : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isGameApp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isGameApp:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    if-eqz v4, :cond_0

    :try_start_1
    const-string/jumbo v6, "4017"

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v7}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getToolsMoveCnt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "4019"

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-virtual {v7}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->getKeyLockPressCnt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isNaverInitialized:Z

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/samsung/SPlug;->getOnLifeCycleListener()Lcom/naver/glink/android/sdk/samsung/SPlug$OnLifeCycleListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/naver/glink/android/sdk/samsung/SPlug$OnLifeCycleListener;->onPause()V

    const-string/jumbo v6, "SPLUG_GAMETOOLS"

    const-string/jumbo v7, "SPlug.getOnLifeCycleListener().onPause()"

    invoke-static {v6, v7}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->destroyController()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v6, 0x0

    :try_start_3
    iput-boolean v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isDestroyed:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isNaverInitialized:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isRecording:Z

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setNaverCafeFeature(Z)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    if-nez v6, :cond_3

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->set()V

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->setKeyLockPressCnt(I)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsReservedHiddenToast:Z

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/sec/game/gamecast/common/model/SettingData;->getGamePID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->getInstance()Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->getPidFromPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    if-eq v5, v1, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "different with prev PID"

    invoke-static {v6, v7}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->toastCurrentState(Z)V

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-static {v6, v7, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setGamePID(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz v4, :cond_9

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isShowGameTools(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->getGameToolsHiddenViCnt(Landroid/content/Context;)I

    move-result v0

    rem-int/lit8 v6, v0, 0xa

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "reserve HiddenToast"

    invoke-static {v6, v7}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsReservedHiddenToast:Z

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    add-int/lit8 v7, v0, 0x1

    rem-int/lit8 v7, v7, 0xa

    invoke-static {v6, v7}, Lcom/sec/game/gamecast/common/model/SettingData;->setGameToolsHiddenViCnt(Landroid/content/Context;I)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->createHelperHeightWnd()V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockModule:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->createKeyLockWnd()V

    :cond_8
    if-eqz p3, :cond_9

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->isMccKr(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCafeUtil:Lcom/sec/game/gamecast/common/utility/CafeDataUtil;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, p0}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->check(Ljava/lang/String;Lcom/sec/game/gamecast/common/utility/CafeDataListener;)V

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDisplayChangeListener:Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;

    if-nez v6, :cond_a

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mMainView:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;-><init>(Landroid/content/Context;Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;)V

    iput-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDisplayChangeListener:Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    :try_start_4
    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v7, "display"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mDisplayChangeListener:Lcom/samsung/android/game/gametools/floatingui/listener/DisplayChangeListener;

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method public setNoAlerts(Z)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNoAlerts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT17"

    if-eqz p1, :cond_1

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

    return-void

    :cond_1
    move-wide v4, v6

    goto :goto_0
.end method

.method public declared-synchronized setOrientation(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mCurrentOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setResolution()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResolution:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResolution:Landroid/graphics/Point;

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

.method public showBubbleGuide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showBubbleGuide : mHandle.getVisibility() == View.VISIBLE"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mBubbleGuide:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mBubbleGuide:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mBubbleGuide:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitBubbleGuide;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showBubbleGuide : mHandle.getVisibility() != View.VISIBLE"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showBubbleGuideDelayed(J)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showBubbleGuideDelayed"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mBubbleGuideRunnable:Ljava/lang/Runnable;

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

.method public showGuide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsGuide;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mDetectorHandler:showGuide"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$20;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$20;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setDispatchKeyListener(Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;)V

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$21;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$21;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

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

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showGuideDelayed"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

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

.method showIntro()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIntro:Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mResolution:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    const/16 v3, -0x64

    const/16 v4, 0x1388

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->refinePosition(II)Landroid/graphics/Point;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$22;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$22;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/module/GameToolsIntro;->show(Landroid/graphics/Point;Landroid/graphics/Point;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showIntro"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showRecordingGuide(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showRecordingGuide"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$18;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$18;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setDispatchKeyListener(Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;)V

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$19;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$19;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

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

.method public startRecording()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getProfileSource(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->isRecordingGuideShown(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showRecordingGuide(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoneRecordingGuideShown(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showRecordingGuide(I)V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isRecording:Z

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->startRecordModule()V

    goto :goto_0
.end method

.method public updateLayoutByConfigurationChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateLayoutByConfigurationChange"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

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
