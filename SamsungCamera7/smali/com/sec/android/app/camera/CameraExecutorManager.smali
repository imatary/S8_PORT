.class public Lcom/sec/android/app/camera/CameraExecutorManager;
.super Ljava/lang/Object;
.source "CameraExecutorManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;,
        Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;
    }
.end annotation


# static fields
.field private static final COMMAND_BY_BIXBY:I = 0x1

.field private static final COMMAND_BY_BIXBY_RESTART_LAST_STATE:I = 0x2

.field private static final INVALID_PARAM:I = -0x7d0

.field private static final NO_PARAM:I = -0x3e8

.field private static final RETRY_LAST_STATE_DURATION:I = 0x3e8

.field public static final SETTING_CONTACTUS:I = 0x9

.field public static final SETTING_LAUNCH_FRONT_PICTURESIZE_MENU:I = 0x4

.field public static final SETTING_LAUNCH_FRONT_TIMER_MENU:I = 0x2

.field public static final SETTING_LAUNCH_FRONT_VIDEOSIZE_MENU:I = 0x6

.field public static final SETTING_LAUNCH_QUICK_LAUNCH_MENU:I = 0xa

.field public static final SETTING_LAUNCH_REAR_PICTURESIZE_MENU:I = 0x3

.field public static final SETTING_LAUNCH_REAR_TIMER_MENU:I = 0x1

.field public static final SETTING_LAUNCH_REAR_VIDEOSIZE_MENU:I = 0x5

.field public static final SETTING_LAUNCH_WAY_TO_TAKE_PICTURE_MENU:I = 0x7

.field public static final SETTING_REFRESH_COMMON_MENU:I = 0x66

.field public static final SETTING_REFRESH_FRONT_MENU:I = 0x65

.field public static final SETTING_REFRESH_REAR_MENU:I = 0x64

.field public static final SETTING_REFRESH_RESOLUTION_MENU:I = 0x68

.field public static final SETTING_REFRESH_TIMER_MENU:I = 0x67

.field public static final SETTING_RESET:I = 0x8

.field private static final TAG:Ljava/lang/String; = "CameraExecutorManager"

.field private static final WAIT_HIDE_SHOOTING_MODE_MENU_DURATION:I = 0x12c


# instance fields
.field private mAppList:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackCameraId:I

.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mCameraContext:Lcom/sec/android/app/camera/Camera;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCommonTimerCameraId:I

.field private mContext:Landroid/content/Context;

.field private mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

.field mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

.field private mFrontCameraId:I

.field private mInitBixbyApiThread:Ljava/lang/Thread;

.field private mIsCameraActivity:Z

.field private mIsSwitchedCameraForced:Z

.field private mIsWaitCommandResult:Z

.field private mLastLandingState:Ljava/lang/String;

.field private mLastNlgErrorType:I

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

.field private mMenuDimController:Lcom/sec/android/app/camera/DimController;

.field private mResultParam:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/DimController;II)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAppList:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/data/State;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    iput v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    iput v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    iput v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    iput v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$1;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object p3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    iput p4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    iput p5, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAppList:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    iput-boolean v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/data/State;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    iput v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$1;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getDimController()Lcom/sec/android/app/camera/DimController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    iput-boolean v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraExecutorManager;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/CameraExecutorManager;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraExecutorManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->registerInterimStateListener()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/CameraExecutorManager;ZILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/CameraExecutorManager;)Ljava/util/LinkedHashSet;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processState(Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/CameraExecutorManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/DimController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMenuDimController:Lcom/sec/android/app/camera/DimController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/CameraExecutorManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/CameraExecutorManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeChangeSettingBySingleValue(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/CameraExecutorManager;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeChangeSettingByMultiValue(IIZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/CameraExecutorManager;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeShowMenu(IIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CameraExecutorManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/CameraExecutorManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeLaunchToOtherApp(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/CameraExecutorManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeActionCapture(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/CameraExecutorManager;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/CameraExecutorManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/CameraExecutorManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/samsung/android/sdk/bixby/BixbyApi;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/samsung/android/sdk/bixby/data/State;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/CameraExecutorManager;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->getCameraExecutorManager()Lcom/sec/android/app/camera/CameraExecutorManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    return-void
.end method

.method private addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logOutputParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private clearInterimStateListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    :cond_0
    return-void
.end method

.method private getCameraExecutorManager()Lcom/sec/android/app/camera/CameraExecutorManager;
    .locals 0

    return-object p0
.end method

.method private getEffectIdByEffectName(Ljava/lang/String;I)I
    .locals 6

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffects(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v3, "Filter"

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$ExtEffectItem;->getEffectId()I

    move-result v2

    :goto_0
    return v2

    :cond_1
    const-string v2, "Auto"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v3, "Filter"

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090114

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    const/16 v2, 0x400

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v3, "Filter"

    invoke-direct {v2, v3, p1}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    const/16 v2, -0x7d0

    goto :goto_0
.end method

.method private getShootingModeNameByModeId(I)Ljava/lang/String;
    .locals 3

    const-string v0, "CameraExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShootingModeNameByModeId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    const-string v0, "Auto"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "Animated GIF"

    goto :goto_0

    :sswitch_1
    const-string v0, "Anti-fog"

    goto :goto_0

    :sswitch_2
    const-string v0, "Aqua"

    goto :goto_0

    :sswitch_3
    const-string v0, "Auto"

    goto :goto_0

    :sswitch_4
    const-string v0, "Beauty face"

    goto :goto_0

    :sswitch_5
    const-string v0, "Panorama"

    goto :goto_0

    :sswitch_6
    const-string v0, "Continuous shot"

    goto :goto_0

    :sswitch_7
    const-string v0, "Dual Camera"

    goto :goto_0

    :sswitch_8
    const-string v0, "Tag shot"

    goto :goto_0

    :sswitch_9
    const-string v0, "Fast motion"

    goto :goto_0

    :sswitch_a
    const-string v0, "Food"

    goto :goto_0

    :sswitch_b
    const-string v0, "Hyperlapse"

    goto :goto_0

    :sswitch_c
    const-string v0, "Night"

    goto :goto_0

    :sswitch_d
    const-string v0, "Pro"

    goto :goto_0

    :sswitch_e
    const-string v0, "Rear-cam selfie"

    goto :goto_0

    :sswitch_f
    const-string v0, "HDR (Rich tone)"

    goto :goto_0

    :sswitch_10
    const-string v0, "Selective focus"

    goto :goto_0

    :sswitch_11
    const-string v0, "Selfie"

    goto :goto_0

    :sswitch_12
    const-string v0, "Slow motion"

    goto :goto_0

    :sswitch_13
    const-string v0, "Sound & shot"

    goto :goto_0

    :sswitch_14
    const-string v0, "Sports"

    goto :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Front Video Collage"

    goto :goto_0

    :cond_0
    const-string v0, "Rear Video Collage"

    goto :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Front Virtual shot"

    goto :goto_0

    :cond_1
    const-string v0, "Rear Virtual shot"

    goto :goto_0

    :sswitch_17
    const-string v0, "Wide selfie"

    goto :goto_0

    :sswitch_18
    const-string v0, "Wechat video"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x7 -> :sswitch_4
        0xe -> :sswitch_f
        0x11 -> :sswitch_6
        0x17 -> :sswitch_c
        0x23 -> :sswitch_13
        0x28 -> :sswitch_14
        0x2a -> :sswitch_2
        0x2d -> :sswitch_10
        0x2f -> :sswitch_7
        0x31 -> :sswitch_1
        0x34 -> :sswitch_17
        0x37 -> :sswitch_11
        0x38 -> :sswitch_e
        0x3a -> :sswitch_0
        0x3b -> :sswitch_d
        0x3e -> :sswitch_16
        0x3f -> :sswitch_12
        0x40 -> :sswitch_9
        0x43 -> :sswitch_8
        0x44 -> :sswitch_a
        0x45 -> :sswitch_15
        0x48 -> :sswitch_5
        0x4a -> :sswitch_b
        0x4b -> :sswitch_d
        0x4d -> :sswitch_17
        0x4e -> :sswitch_17
        0x4f -> :sswitch_18
    .end sparse-switch
.end method

.method private getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const-string v3, "CameraExecutorManager"

    const-string v4, "getSupportedModeSetInCurrentState"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iget-boolean v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-eqz v3, :cond_1

    invoke-static {v5}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->getSupportedModeSet(IZ)Ljava/util/LinkedHashSet;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    const-string v3, "CameraExecutorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "debug stateId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getCurrentSubFragment()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    const/16 v3, 0x4d

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/executor/RulePathState;->getSupportedSettingSet(IZ)Ljava/util/LinkedHashSet;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :pswitch_1
    const/16 v3, 0x47

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    const/16 v3, 0xb0

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    const/16 v3, 0x30

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    const/16 v3, 0x29

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_5
    const/16 v3, 0x32

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_6
    const/16 v3, 0x2b

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_7
    const/16 v3, 0x61

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleExecutorCommand(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;->onExecutorCommand(I)V

    :cond_0
    return-void
.end method

.method private hideColorTuneEditMenu()V
    .locals 2

    const/16 v0, 0x77

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    return-void
.end method

.method private hideEffectMenuActive()V
    .locals 2

    const/16 v0, 0x7f

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    return-void
.end method

.method private hideShootingModeMenu()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x64

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private initLastLandingState()V
    .locals 3

    const-string v0, "CameraExecutorManager"

    const-string v1, "initLastLandingState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "CameraExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLastLandingState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingLandingState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingLandingState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    goto :goto_0
.end method

.method private isAvailableChangeShootingMode()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isAttachVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isColorTuneEditMenuActive()Z
    .locals 2

    const/16 v0, 0x77

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEffectMenuActive()Z
    .locals 2

    const/16 v0, 0x7f

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNeedToModeDownloadPage(I)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getModesMap(I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNeedToSendAlreadySetNlg(III)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    if-ne p2, p3, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getNlgLandingStateID(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShootingModeMenuActive()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x64

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isSupportChangeShootingModeWithCameraType(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "Video Collage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Virtual shot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Animated GIF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Wechat video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const-string v2, "Selective focus"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_SHOOTINGMODE_SELECTIVE_FOCUS:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "Selfie"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Wide selfie"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Front"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v2

    goto :goto_1
.end method

.method private isSupportModeInCurrentState(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSupportedModeForRequestedShootingMode(ILjava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-nez v2, :cond_0

    const-string v2, "CameraExecutorManager"

    const-string v3, "isSupportedModeForRequestedShootingMode mIsCameraActivity is set"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isAvailableChangeShootingMode()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    sget v2, Lcom/sec/android/app/camera/interfaces/CameraSettings;->DEFAULT_FRONT_SHOOTINGMODE:I

    if-eq p3, v2, :cond_1

    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    invoke-static {p3, v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getSupportedModeSet(IZ)Ljava/util/LinkedHashSet;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_0
.end method

.method private isUsingFlashAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getLowBatteryStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToUseFlash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureLowToUseFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWaitHideMenu()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isEffectMenuActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->hideEffectMenuActive()V

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->hideShootingModeMenu()V

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isColorTuneEditMenuActive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->hideColorTuneEditMenu()V

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    :cond_3
    return v0
.end method

.method private launchShootingModeMenu()Z
    .locals 6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x64

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isAvailableChangeShootingMode()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :cond_0
    :goto_1
    return v2

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/MenuBase;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const v3, 0x7f0b000c

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v3

    const/16 v4, 0x1d4c

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->onPageSelected(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v4, "G012"

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private processState(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 32

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v26

    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "processState, stateId : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v15

    invoke-static/range {v26 .. v26}, Lcom/sec/android/app/camera/executor/RulePathState;->getStateIDbyName(Ljava/lang/String;)I

    move-result v25

    const/16 v28, -0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    const-string v28, "CameraExecutorManager"

    const-string v29, "Can\'t process unknown processId"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v28

    if-eqz v28, :cond_2

    const-string v28, "CameraExecutorManager"

    const-string v29, "Can\'t process during capture"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    :cond_2
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/executor/RulePathState;->checkGroupTypeStateByStateId(I)I

    move-result v18

    const/4 v10, 0x0

    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    move/from16 v0, v25

    iput v0, v12, Landroid/os/Message;->arg1:I

    const/16 v28, -0x3e8

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "dump State : RuleID :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " StateId : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " isLandingState : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLandingState()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " isLastState : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " isExecuted : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->isExecuted()Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_4

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_4

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v14

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v22

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValueType()Ljava/lang/String;

    move-result-object v24

    const-string v23, ""

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v23

    :cond_3
    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "dump State : paramName :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " slotValue : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " slotValueType : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    const-string v28, "CameraExecutorManager"

    const-string v29, "slotValue is null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    packed-switch v18, :pswitch_data_0

    :pswitch_0
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x1

    invoke-static {v14}, Lcom/sec/android/app/camera/executor/RulePathParam;->checkGroupTypeParameterByParamName(Ljava/lang/String;)I

    move-result v27

    packed-switch v27, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    const-string v28, "int"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_20

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto :goto_1

    :pswitch_2
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v11, v22

    invoke-static {v11}, Lcom/sec/android/app/camera/executor/RulePathParam;->getShootingModeNameFromModeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeIdByModeName(Ljava/lang/String;)I

    move-result v20

    const-string v28, "Auto"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_6

    if-nez v20, :cond_6

    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "Mode"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v13}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    const/16 v28, 0x0

    const/16 v29, 0xd

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "Mode"

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    const-string v28, "_unsupported"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_7

    const/16 v28, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v28

    if-nez v28, :cond_0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isWaitHideMenu()Z

    move-result v28

    if-eqz v28, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    const-wide/16 v30, 0x12c

    invoke-virtual/range {v28 .. v31}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportChangeShootingModeWithCameraType(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_11

    const/16 v28, 0x1

    move/from16 v0, v28

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportedModeForRequestedShootingMode(ILjava/lang/String;I)Z

    move-result v28

    if-nez v28, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v28

    if-nez v28, :cond_0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v28

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_f

    const/16 v28, 0xa

    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    const/16 v28, 0x1

    const/16 v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    const/16 v28, 0xb

    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    const/16 v28, 0x37

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isEffectMenuActive()Z

    move-result v28

    if-eqz v28, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->hideEffectMenuActive()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v28

    packed-switch v28, :pswitch_data_2

    :goto_2
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleTakePicture()V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    const/16 v29, 0x3

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShutterTimer(I)V

    goto :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    const/16 v29, 0x2

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShutterTimer(I)V

    goto :goto_2

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    const/16 v29, 0x5

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShutterTimer(I)V

    goto :goto_2

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v28

    const/16 v29, 0xa

    invoke-interface/range {v28 .. v29}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartShutterTimer(I)V

    goto :goto_2

    :cond_d
    const/16 v28, 0x1

    const/16 v29, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_e
    const/16 v28, 0x1

    const/16 v29, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_f
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :cond_10
    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToModeDownloadPage(I)Z

    move-result v28

    if-eqz v28, :cond_4

    const/16 v28, 0x74

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    const/16 v28, 0x0

    const/16 v29, 0xd

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    goto/16 :goto_0

    :cond_11
    const/16 v28, 0x4

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    const/16 v28, 0x24

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    move/from16 v28, v0

    if-eqz v28, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isWaitHideMenu()Z

    move-result v28

    if-eqz v28, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    const-wide/16 v30, 0x12c

    invoke-virtual/range {v28 .. v31}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_13
    const-string v28, "int"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v12, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v8

    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unsupported param type : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_8
    const-string v28, "int"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    :try_start_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v8

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getCommandId(Ljava/lang/String;)I

    move-result v7

    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v7, v0, :cond_14

    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unsupported param type : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_14
    const/16 v28, 0x1db0

    move/from16 v0, v28

    if-le v7, v0, :cond_15

    const/16 v28, 0x1dbb

    move/from16 v0, v28

    if-ge v7, v0, :cond_15

    iput v7, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    :cond_15
    invoke-static {v7}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    :cond_16
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getCommandId(Ljava/lang/String;)I

    move-result v7

    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v7, v0, :cond_17

    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-direct {v0, v14, v1}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    goto/16 :goto_1

    :cond_17
    const/16 v28, 0x1db0

    move/from16 v0, v28

    if-le v7, v0, :cond_18

    const/16 v28, 0x1dbb

    move/from16 v0, v28

    if-ge v7, v0, :cond_18

    iput v7, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    :cond_18
    invoke-static {v7}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    :pswitch_9
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1b

    const/4 v9, 0x1

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v17

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v16

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x28

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    const/4 v9, 0x0

    :cond_19
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a

    const/16 v28, -0x3e8

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1, v9}, Lcom/sec/android/app/camera/executor/RulePathParam;->getResolutionFromResolutionParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "PictureSize"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c

    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v21, v22

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v19

    const/16 v28, -0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_1d

    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "PictureSize"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "VideoSize"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    :cond_1c
    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "size : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " id : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1d
    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "PictureSize"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    new-instance v28, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v29, "VideoSize"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    const/16 v28, -0x7d0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    :pswitch_a
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    const/16 v28, 0x44

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_1e

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getEffectIdByEffectName(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    :cond_1e
    const/16 v28, 0x45

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_1f

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getEffectIdByEffectName(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    :cond_1f
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getEffectIdByEffectName(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x7d0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getEffectIdByEffectName(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->setAppList(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_20
    const-string v28, "String"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    const-string v28, "CameraExecutorManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "slotValue is unknown"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_c
    const/16 v28, 0x37

    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isWaitHideMenu()Z

    move-result v28

    if-eqz v28, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    const-wide/16 v30, 0x12c

    invoke-virtual/range {v28 .. v31}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_22
    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x3e8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_23

    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    const/16 v28, 0x1

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_23
    const/16 v28, 0x24

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    :cond_24
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    :cond_25
    :goto_3
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_26
    if-nez v10, :cond_24

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportModeInCurrentState(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2a

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_29

    const/16 v28, 0xa

    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v28

    if-eqz v28, :cond_27

    const/16 v28, 0x1

    const/16 v29, 0xd

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    goto/16 :goto_0

    :cond_27
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :cond_28
    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v25

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_29
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :cond_2a
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2b

    const/16 v28, 0x78

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSettingLandingState(Ljava/lang/String;)V

    const/16 v28, 0x78

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSettingLandingState(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSettingLandingState(Ljava/lang/String;)V

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :pswitch_f
    const/16 v28, 0x43

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2c

    const/16 v28, 0x7f

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    :cond_2c
    const/16 v28, 0x95

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v28

    if-eqz v28, :cond_2d

    const/16 v28, 0x81

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    :cond_2d
    const/16 v28, 0x71

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    :cond_2e
    const/16 v28, 0x92

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2f

    const/16 v28, 0x80

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    :cond_2f
    const/16 v28, 0xa9

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_30

    const/16 v28, 0x75

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    :cond_30
    const/16 v28, 0x47

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_25

    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x3e8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_31

    iget v0, v12, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x7d0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    check-cast v28, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getCurrentSubFragment()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_32

    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    check-cast v28, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getCurrentSubFragment()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_33

    const/16 v28, 0x0

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v28

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    :pswitch_10
    const/16 v28, 0x51

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_34

    const/16 v28, 0x74

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    :cond_34
    const/16 v28, 0x53

    invoke-static/range {v28 .. v28}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_25

    const/16 v28, 0x232a

    move/from16 v0, v28

    iput v0, v12, Landroid/os/Message;->arg2:I

    goto/16 :goto_3

    :pswitch_11
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private processStateByBuildCommand(I)Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "CameraExecutorManager"

    const-string v3, "processStateByBuildCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CameraExecutorManager"

    const-string v3, "Execute Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private processStateTypeActionCapture(I)V
    .locals 6

    const/16 v5, 0x82

    const/16 v4, 0x1b

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "CameraExecutorManager"

    const-string v1, "processStateTypeActionCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    const-string v0, "CameraExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default: id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCaptureAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isEffectMenuActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->hideEffectMenuActive()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->isRecordingAvailable(Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    const/16 v0, 0x36

    invoke-static {v0}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x36 -> :sswitch_1
    .end sparse-switch
.end method

.method private processStateTypeChangeSettingByMultiValue(IIZ)V
    .locals 22

    const-string v18, "CameraExecutorManager"

    const-string v19, "processStateTypeChangeSettingByMultiValue"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    const-string v18, "CameraExecutorManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "default: id : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "TimerSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x6

    :goto_1
    const/16 v18, 0x47

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    if-eqz p3, :cond_5

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "TimerSetting"

    const/16 v20, 0x6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_4

    const/4 v15, 0x2

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(II)V

    const/16 v15, 0x64

    const/16 v18, 0x67

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_1

    :cond_5
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v15, v0, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    :cond_6
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :sswitch_1
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "GridlinesSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    const/16 v18, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "GridlinesSetting"

    const/16 v20, 0x13

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    const/16 v18, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_2
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "VolumekeyFunctionSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    const/16 v19, 0x7e

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_9
    :goto_2
    const/16 v18, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :cond_a
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/16 v18, 0x1

    const/16 v19, 0x7e

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "VolumekeyFunctionSetting"

    const/16 v20, 0x49

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVolumeKeyAs(I)V

    const/16 v18, 0x1

    const/16 v19, 0x7e

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_2

    :sswitch_3
    const/16 v18, 0x30

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_d
    :goto_3
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :cond_e
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v18

    if-nez v18, :cond_f

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(II)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_3

    :sswitch_4
    const/16 v18, 0x29

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v18

    if-eqz v18, :cond_10

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_10
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_11
    :goto_4
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :cond_12
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v18

    if-nez v18, :cond_13

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(II)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_4

    :sswitch_5
    const/16 v18, 0x32

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v18

    if-eqz v18, :cond_14

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_14
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_15
    :goto_5
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :cond_16
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v18

    if-nez v18, :cond_17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBackCameraId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(II)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_5

    :sswitch_6
    const/16 v18, 0x2b

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v18

    if-eqz v18, :cond_18

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_18
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_19
    :goto_6
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :cond_1a
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v18

    if-nez v18, :cond_1b

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(II)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_6

    :sswitch_7
    const/16 v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v8, 0x2713

    const/16 v18, 0x4f

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    sget-boolean v18, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-nez v18, :cond_1c

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_1c
    const/16 v8, 0x2711

    :cond_1d
    const/16 v18, 0xae

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    sget-boolean v18, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_WATERMARK:Z

    if-nez v18, :cond_1e

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_1e
    const/16 v8, 0x2712

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v18

    const/16 v19, 0x7f

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    if-eqz v10, :cond_20

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    const/16 v19, 0x1e78

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_21
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v18

    const/16 v19, 0x7f

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateRemoveEffectButton()V

    const/16 v18, 0x1e78

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    goto/16 :goto_0

    :cond_22
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_23

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_7

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_7

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    const/16 v19, 0x1e79

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_25

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_24
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v18

    const/16 v19, 0x7f

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateRemoveEffectButton()V

    const/16 v18, 0x1e79

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    goto/16 :goto_0

    :cond_25
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_26

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_8

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_8

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v18

    if-eqz v18, :cond_27

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_27
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v18

    if-nez v18, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    const/16 v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isEffectMenuActive()Z

    move-result v18

    if-nez v18, :cond_0

    const/16 v18, 0x7f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    goto/16 :goto_0

    :cond_28
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :cond_29
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2a

    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleEffectModeChanged(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v9

    if-nez v9, :cond_2b

    if-nez p2, :cond_2c

    :cond_2b
    if-eqz v9, :cond_2d

    if-nez p2, :cond_2d

    :cond_2c
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_0

    :cond_2d
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :sswitch_c
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2e

    const/16 v18, 0x96

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_2e
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2f

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "HyperLapseSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x96

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "HyperLapseSetting"

    const/16 v20, 0x170d

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRecordingMotionSpeed()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRecordingMotionSpeed(I)V

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_d
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_30

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_30
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_31

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0xb

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraExposureMeter()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraExposureMeter(I)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_e
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_32

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_32
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_33

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_33
    new-instance v18, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v20, v0

    const/16 v21, 0x91

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValuesString(II)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMultiAFMode(I)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_f
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_36

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_34

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result p2

    :goto_9
    new-instance v14, Landroid/content/Intent;

    const-string v18, "camera.action.ACTION_CHANGE_ISO"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "pro_settingvalue"

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0xa

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_35

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_9

    :cond_35
    const/16 v18, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_9

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result p2

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_9

    :sswitch_10
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_39

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_37

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p2

    :goto_a
    new-instance v16, Landroid/content/Intent;

    const-string v18, "camera.action.ACTION_CHANGE_SHUTTER_SPEED"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "pro_settingvalue"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0x1f

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_38

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_a

    :cond_38
    const/16 v18, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_a

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p2

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_a

    :sswitch_11
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_3c

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_3a

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result p2

    :goto_b
    new-instance v17, Landroid/content/Intent;

    const-string v18, "camera.action.ACTION_CHANGE_WHITEBALANCE"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "pro_settingvalue"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0x9

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_3b

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_b

    :cond_3b
    const/16 v18, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_b

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result p2

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_b

    :sswitch_12
    const/4 v13, -0x1

    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_42

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_3e

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v13

    :cond_3d
    :goto_c
    new-instance v12, Landroid/content/Intent;

    const-string v18, "camera.action.ACTION_CHANGE_FOCUS_MODE"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "pro_settingvalue"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0x5

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3f

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_c

    :cond_3f
    const/16 v18, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_c

    :cond_40
    const/16 v18, 0x3

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_41

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_c

    :cond_41
    const/4 v13, 0x0

    const/16 v18, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_c

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v13

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_c

    :sswitch_13
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_46

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_43

    const/16 v18, 0x14

    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_43

    const/16 v18, -0x14

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_44

    :cond_43
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result p2

    :goto_d
    new-instance v11, Landroid/content/Intent;

    const-string v18, "camera.action.ACTION_CHANGE_EXPOSURE"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "pro_settingvalue"

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0x7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_45

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_d

    :cond_45
    const/16 v18, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto :goto_d

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result p2

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_d

    :sswitch_14
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_49

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_47

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "ProSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result p2

    :goto_e
    new-instance v7, Landroid/content/Intent;

    const-string v18, "camera.action.ACTION_CHANGE_COLORTUNE"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "pro_settingvalue"

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p3, :cond_4a

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "ProSetting"

    const/16 v20, 0xe

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_48

    const/4 v15, 0x2

    goto :goto_e

    :cond_48
    const/16 v15, 0x64

    goto :goto_e

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result p2

    const/4 v15, 0x1

    goto :goto_e

    :cond_4a
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v18, 0x6

    move/from16 v0, v18

    if-ne v15, v0, :cond_4b

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    :cond_4b
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v18

    if-nez v18, :cond_4c

    const/16 v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    :cond_4c
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :cond_4d
    if-nez p2, :cond_4e

    const/16 v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    goto/16 :goto_0

    :cond_4e
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :sswitch_15
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_58

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_57

    const/16 v18, 0x98

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "BeautySetting"

    const/16 v20, 0x77

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    :goto_f
    const/16 v18, 0x8

    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_4f

    if-gez p2, :cond_50

    :cond_4f
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    const/16 p2, -0x7d0

    :cond_50
    :goto_10
    const/16 v18, 0x9a

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_59

    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_51

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEyeEnlargeLevel(I)V

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v18

    const/16 v19, 0x1965

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    :cond_52
    const/16 v18, 0x1db1

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_53

    const/16 v18, 0x1db7

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_53

    const/16 v18, 0x1db3

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_53

    const/16 v18, 0x1db5

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_55

    :cond_53
    const/16 p2, 0x0

    :cond_54
    :goto_11
    new-instance v18, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v19, "BeautySetting"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    goto/16 :goto_f

    :cond_55
    const/16 v18, 0x1db2

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_56

    const/16 v18, 0x1db8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_56

    const/16 v18, 0x1db4

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_56

    const/16 v18, 0x1db6

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_54

    :cond_56
    const/16 p2, 0x8

    goto :goto_11

    :cond_57
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "BeautySetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_58
    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_10

    :cond_59
    const/16 v18, 0x99

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_5b

    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_5a

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSlimFaceLevel(I)V

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v18

    const/16 v19, 0x1966

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    :cond_5b
    const/16 v18, 0x98

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_5d

    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_5c

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightPosition()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSpotlightPosition(I)V

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v18

    const/16 v19, 0x1968

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    :cond_5d
    const/16 v18, 0x97

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_5f

    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_5e

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSpotlightLevel(I)V

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v18

    const/16 v19, 0x1968

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    :cond_5f
    const/16 v18, 0x96

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v18

    if-eqz v18, :cond_61

    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_60

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v18

    const/16 v19, 0x1964

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    goto/16 :goto_0

    :cond_61
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_62

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBeautyLevel()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBackBeautyLevel(I)V

    const/16 v18, 0x1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v18

    const/16 v19, 0x71

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v18

    const/16 v19, 0x71

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto/16 :goto_0

    :sswitch_16
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-eqz v18, :cond_63

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_63
    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_64

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "AntiFogSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_64
    const/16 v18, 0x1db9

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_66

    const/16 p2, 0x0

    :cond_65
    :goto_12
    new-instance v18, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    const-string v19, "AntiFogSetting"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateAntiFogUI()V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_66
    const/16 v18, 0x1dba

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_65

    const/16 p2, 0x9

    goto :goto_12

    :cond_67
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_17
    sget-boolean v18, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-eqz v18, :cond_6c

    sget-boolean v18, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v18, :cond_6c

    const/16 v18, -0x7d0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_69

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "QuickLaunchSelectSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_68
    :goto_13
    const/16 v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :cond_69
    const/16 v18, -0x3e8

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_6a

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_13

    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "QuickLaunchSelectSetting"

    const/16 v20, 0x1a

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgResultParam(Landroid/content/Context;Ljava/lang/String;II)Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v18

    if-nez v18, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/util/Util;->isDarkScreen(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_6b

    const/16 v18, 0x3

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_6b

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "double_tab_launch"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_13

    :cond_6c
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_b
        0x44 -> :sswitch_9
        0x45 -> :sswitch_a
        0x46 -> :sswitch_8
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4f -> :sswitch_8
        0x55 -> :sswitch_3
        0x58 -> :sswitch_5
        0x5d -> :sswitch_4
        0x5e -> :sswitch_6
        0x6a -> :sswitch_1
        0x71 -> :sswitch_2
        0x72 -> :sswitch_7
        0x81 -> :sswitch_c
        0x82 -> :sswitch_d
        0x83 -> :sswitch_e
        0x85 -> :sswitch_f
        0x87 -> :sswitch_10
        0x89 -> :sswitch_13
        0x8a -> :sswitch_14
        0x8f -> :sswitch_11
        0x91 -> :sswitch_12
        0x96 -> :sswitch_15
        0x97 -> :sswitch_15
        0x98 -> :sswitch_15
        0x99 -> :sswitch_15
        0x9a -> :sswitch_15
        0xaa -> :sswitch_16
        0xae -> :sswitch_8
        0xaf -> :sswitch_17
    .end sparse-switch
.end method

.method private processStateTypeChangeSettingBySingleValue(I)V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x66

    const/4 v4, 0x0

    const/16 v6, 0x64

    const/4 v5, 0x1

    const-string v2, "CameraExecutorManager"

    const-string v3, "processStateTypeChangeSettingBySingleValue"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v2, "CameraExecutorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default: id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/sec/android/app/camera/util/MotionPhotoManager;->setMotionPhotoComposerEnable(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPhoto(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x24

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/sec/android/app/camera/util/MotionPhotoManager;->setMotionPhotoComposerEnable(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPhoto(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x24

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x7b

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x7b

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_5
    const/16 v2, 0x47

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setInterval(II)V

    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_6
    const/16 v2, 0x47

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setInterval(II)V

    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setPictureFormat(I)V

    const/16 v2, 0x68

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x30

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_5
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setPictureFormat(I)V

    const/16 v2, 0x68

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x30

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_6
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTapToTakePictures()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTapToTakePictures(I)V

    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_7
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTapToTakePictures()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTapToTakePictures(I)V

    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_8
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_9
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_a
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setHRMShutter(I)V

    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_b
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setHRMShutter(I)V

    const/16 v2, 0x61

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    :cond_c
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setObjectTrackingAF(I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x26

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setObjectTrackingAF(I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x26

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRearLensDistortionCorrection()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRearLensDistortionCorrection(I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x27

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRearLensDistortionCorrection()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setRearLensDistortionCorrection(I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x27

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x23

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x23

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAntiShake(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x2c

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAntiShake(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x2c

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setReview(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x2e

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setReview(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x2e

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_19
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v2

    if-eq v2, v8, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v1

    if-nez v1, :cond_f

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_e
    :goto_1
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_f
    if-ne v1, v8, :cond_e

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isDarkScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :pswitch_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v2

    if-eq v2, v8, :cond_11

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQuickLaunchType()I

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_12
    if-ne v1, v5, :cond_14

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_13
    :goto_2
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :pswitch_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x7c

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x7c

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFloatingCameraButton()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFloatingCameraButton(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x34

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFloatingCameraButton()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFloatingCameraButton(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x34

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_21
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSDStorageMounted()Z

    move-result v2

    if-nez v2, :cond_15

    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_15
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_22
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSDStorageMounted()Z

    move-result v2

    if-nez v2, :cond_16

    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_17
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_24
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isUsingFlashAvailable()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_18
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_19
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_25
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isUsingFlashAvailable()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {p0, v5, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_26
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_27
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-direct {p0, p1, v2, v8}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_28
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_29
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPanoramaMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPanoramaMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_2a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPanoramaMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPanoramaMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_2b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodBlurType(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_2c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodBlurType(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_2d
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionWideSelfieMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionWideSelfieMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_2e
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionWideSelfieMode()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionWideSelfieMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_2f
    new-instance v0, Landroid/content/Intent;

    const-string v2, "camera.action.ACTION_SELECT_COLORTUNE_RESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :pswitch_30
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v2

    const/16 v3, 0x1967

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_31
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v2

    const/16 v3, 0x1967

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyMenuSelect(I)Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->updateBeautyUI()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_32
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQRCodeDetection()I

    move-result v2

    invoke-direct {p0, p1, v2, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setQRCodeDetection(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_33
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQRCodeDetection()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setQRCodeDetection(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_34
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    const/16 v2, 0x35

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_35
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->isNeedToSendAlreadySetNlg(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(II)V

    const/16 v2, 0x47

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_35
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_34
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2b
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_30
        :pswitch_31
        :pswitch_2d
        :pswitch_2e
        :pswitch_1d
        :pswitch_1e
        :pswitch_21
        :pswitch_22
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_32
        :pswitch_33
    .end packed-switch
.end method

.method private processStateTypeLaunchToOtherApp(II)V
    .locals 5

    const/4 v4, 0x7

    const/16 v3, 0x64

    const/4 v2, 0x1

    const-string v0, "CameraExecutorManager"

    const-string v1, "processStateTypeLaunchToOtherApp"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    const-string v0, "CameraExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default: id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "quickview"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.voc"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isSamsungManagerVersionSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->startShareViaAnimation()V

    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->startShareActivity(Landroid/net/Uri;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.helphub"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.helphub"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->showHelpHub(Landroid/content/Context;)V

    const/16 v0, 0xa5

    invoke-static {v0}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_1
        0x4e -> :sswitch_3
        0x51 -> :sswitch_0
        0x53 -> :sswitch_0
        0x73 -> :sswitch_2
        0xa5 -> :sswitch_4
    .end sparse-switch
.end method

.method private processStateTypeShowMenu(IIZ)V
    .locals 9

    const/16 v8, 0x54

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/16 v6, 0x64

    const/4 v5, 0x1

    const-string v2, "CameraExecutorManager"

    const-string v3, "processStateTypeShowMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    const-string v2, "CameraExecutorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default: id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v5}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {p0, v4, p1, v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isEffectMenuActive()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v7, v4, v5}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_3
    if-ne p2, v5, :cond_7

    iput v5, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getCurrentSubFragment()I

    move-result v2

    if-eq v2, v7, :cond_6

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    :cond_6
    :goto_1
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    :cond_7
    iput v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getCurrentSubFragment()I

    move-result v2

    if-eq v2, v5, :cond_6

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->handleExecutorCommand(I)V

    goto :goto_1

    :sswitch_4
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    const/16 v2, 0x232f

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z

    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/ModeListMenu;

    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$3;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager$3;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeShortcutMenu()V

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v8, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ModeListMenu;

    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$4;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/CameraExecutorManager$4;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeShortcutMenu()V

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v8, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/ModeListMenu;

    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$5;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/camera/CameraExecutorManager$5;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeInfoMenu()V

    const/16 v2, 0x7a

    const/16 v3, 0x7a

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v2, v3, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuManager()Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ModeListMenu;

    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$6;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/CameraExecutorManager$6;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->isShootingModeMenuActive()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeInfoMenu()V

    const/16 v2, 0x7a

    const/16 v3, 0x7a

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v2, v3, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->launchShootingModeMenu()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto/16 :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "camera.action.ACTION_SELECT_COLORTUNE_EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "camera.action.ACTION_SELECT_COLORTUNE_EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, v5, p1, v2, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_4
        0x2b -> :sswitch_4
        0x30 -> :sswitch_4
        0x32 -> :sswitch_4
        0x43 -> :sswitch_2
        0x47 -> :sswitch_3
        0x54 -> :sswitch_6
        0x78 -> :sswitch_5
        0x79 -> :sswitch_5
        0x7a -> :sswitch_7
        0x8b -> :sswitch_8
        0x8d -> :sswitch_9
        0x92 -> :sswitch_1
        0x95 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xb0 -> :sswitch_4
    .end sparse-switch
.end method

.method private registerInterimStateListener()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/CameraExecutorManager$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$7;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    return-void
.end method

.method private replaceResultParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v2, ""

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    iget-object v4, v1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, v1, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    new-instance v3, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    invoke-direct {v3, p2, v2}, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->addResultParam(Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;)V

    :cond_2
    return-void
.end method

.method private requestNLG(II)V
    .locals 12

    const-string v8, "CameraExecutorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestNLG, requestId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mLastLandingState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {v2, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sparse-switch p2, :sswitch_data_0

    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/NlgIdMap;->checkGroupTypeStateByStateId(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string v8, "CameraExecutorManager"

    const-string v9, "return. unknown nlg type"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->setBixbyTouchable()V

    goto :goto_0

    :pswitch_0
    const/4 v8, 0x2

    if-ne p2, v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x23

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x25

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2d

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    iget-object v9, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->paramName:Ljava/lang/String;

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->attrName:Ljava/lang/String;

    iget-object v11, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->attrValue:Ljava/lang/String;

    invoke-virtual {v2, v9, v10, v11}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->getRequestStateId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->paramName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->attrName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;->attrValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const/16 v8, 0x24

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x28

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x23

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x26

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    const/16 v8, 0x24

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x27

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1
    const/16 v8, 0x8

    if-ne p2, v8, :cond_4

    const/4 v8, 0x3

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    const/16 v8, 0xc

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2
    const/4 v8, 0x4

    if-ne p2, v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x8

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0xb

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    const/16 v8, 0x9

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0xa

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    const/4 v8, 0x1

    if-ne p2, v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x2

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    const/16 v8, 0xf

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    const/4 v8, 0x3

    if-ne p2, v8, :cond_9

    const/4 v8, 0x5

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    const/4 v8, 0x5

    if-ne p2, v8, :cond_a

    const/4 v8, 0x4

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    const/4 v8, 0x6

    if-ne p2, v8, :cond_b

    const/16 v8, 0xd

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    const/4 v8, 0x2

    if-ne p2, v8, :cond_11

    iget-boolean v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    if-eqz v8, :cond_10

    const/16 v8, 0xa

    if-ne v8, p1, :cond_d

    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_c

    const/16 v8, 0x9

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0xb

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    const/16 v8, 0x8

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0xa

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    const/16 v8, 0xb

    if-ne v8, p1, :cond_f

    const/16 v8, 0x37

    iget-object v9, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v9

    if-ne v8, v9, :cond_e

    const/16 v8, 0x30

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    const/16 v8, 0x31

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    const/16 v8, 0xc

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_10
    const/4 v8, 0x6

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_11
    const/16 v8, 0x8

    if-ne p2, v8, :cond_12

    const/4 v8, 0x3

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_12
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    const/16 v8, 0xa

    if-ne v8, p1, :cond_14

    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_13

    const/16 v8, 0x9

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0xb

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_13
    const/16 v8, 0x8

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0xa

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_14
    const/16 v8, 0xb

    if-ne v8, p1, :cond_16

    const/16 v8, 0x37

    iget-object v9, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v9

    if-ne v8, v9, :cond_15

    const/16 v8, 0x30

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_15
    const/16 v8, 0x31

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_16
    const/16 v8, 0xc

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3
    const/4 v8, 0x3

    if-ne p2, v8, :cond_17

    const/16 v8, 0x29

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_17
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgScreenParamByParamName(Ljava/lang/String;I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_4
    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgScreenParamByParamName(Ljava/lang/String;I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_5
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/executor/NlgIdMap;->getNlgScreenParamWithSetting(II)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_6
    const/4 v8, 0x7

    if-ne p2, v8, :cond_18

    const/16 v8, 0xf

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_18
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    const/16 v8, 0xe

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_7
    const/4 v8, 0x1

    if-ne p2, v8, :cond_19

    const/16 v8, 0x12

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_19
    const/4 v8, 0x6

    if-ne p2, v8, :cond_1a

    const/16 v8, 0x13

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1a
    const/4 v8, 0x2

    if-ne p2, v8, :cond_1b

    const/16 v8, 0x14

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1b
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    const/16 v8, 0x15

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_8
    const/4 v8, 0x7

    if-ne p2, v8, :cond_1c

    const/16 v8, 0xf

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1c
    const/4 v8, 0x6

    if-ne p2, v8, :cond_1d

    const/16 v8, 0x13

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1d
    const/16 v8, 0x9

    if-ne p2, v8, :cond_1e

    const/16 v8, 0x16

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1e
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    const/16 v8, 0x17

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_9
    const/4 v8, 0x1

    if-ne p2, v8, :cond_1f

    const/16 v8, 0x2a

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1f
    const/4 v8, 0x6

    if-ne p2, v8, :cond_20

    const/16 v8, 0x2b

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_20
    const/4 v8, 0x2

    if-ne p2, v8, :cond_21

    const/16 v8, 0x2c

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_21
    const/16 v8, 0xa

    if-ne p2, v8, :cond_22

    const/16 v8, 0x2e

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_22
    const/16 v8, 0xb

    if-ne p2, v8, :cond_23

    const/16 v8, 0x19

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_23
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    const/16 v8, 0x8a

    if-ne p1, v8, :cond_24

    const/16 v8, 0x2d

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_24
    const/16 v8, 0x18

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_a
    const/4 v8, 0x1

    if-ne p2, v8, :cond_25

    const/16 v8, 0x1a

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_25
    const/4 v8, 0x6

    if-ne p2, v8, :cond_26

    const/16 v8, 0x1b

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_26
    const/4 v8, 0x2

    if-ne p2, v8, :cond_27

    const/16 v8, 0x1c

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_27
    const/16 v8, 0x8

    if-ne p2, v8, :cond_28

    const/16 v8, 0x1e

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_28
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    const/16 v8, 0x1d

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_b
    const/4 v8, 0x1

    if-ne p2, v8, :cond_29

    const/16 v8, 0x1f

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_29
    const/4 v8, 0x6

    if-ne p2, v8, :cond_2a

    const/16 v8, 0x20

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2a
    const/4 v8, 0x2

    if-ne p2, v8, :cond_2b

    const/16 v8, 0x21

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2b
    const/16 v8, 0x8

    if-ne p2, v8, :cond_2c

    const/16 v8, 0x2f

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2c
    const/16 v8, 0x64

    if-ne p2, v8, :cond_0

    const/16 v8, 0x22

    invoke-static {v8}, Lcom/sec/android/app/camera/executor/NlgIdMap;->get(I)Lcom/sec/android/app/camera/executor/NlgIdMap$ScreenParam;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_c
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v9, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v8, v2, v9}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_1

    :cond_2d
    const-string v8, "CameraExecutorManager"

    const-string v9, "return. paramSet is empty"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_1

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_32

    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2f
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;

    iget-object v9, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    if-eqz v9, :cond_2f

    iget-object v9, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    iget-object v9, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->getRequestStateId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->paramName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/sec/android/app/camera/executor/NlgIdMap$ResultParam;->value:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_30
    const-string v8, "CameraExecutorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSG  ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ) : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , ResultParam : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v8, :cond_31

    iget-object v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v9, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v8, v2, v9}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :cond_31
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    goto/16 :goto_1

    :cond_32
    const-string v8, "CameraExecutorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSG  ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ) : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_c
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_3
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized sendResult(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v1, "CameraExecutorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manager.sendResult, success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->isLandingState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->initLastLandingState()V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mResultParam:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCommonTimerCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private sendResultWithNLG(ZILjava/lang/String;I)V
    .locals 0

    iput-object p3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;

    invoke-direct {p0, p2, p4}, Lcom/sec/android/app/camera/CameraExecutorManager;->requestNLG(II)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    return-void
.end method

.method private setBixbyTouchable()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_0

    const-string v0, "CameraExecutorManager"

    const-string v1, "setBixbyTouchable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setAppVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setAppTouchable(Z)V

    :cond_0
    return-void
.end method

.method private updateAntiFogUI()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.ACTION_ANTI_FOG_UI_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private updateBeautyUI()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.ACTION_BEAUTY_UI_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getAppList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAppList:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 3

    const-string v1, "CameraExecutorManager"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.AUDIOFOCUS_GAIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CameraExecutorManager$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$2;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    const-string v2, "mInitBixbyApiThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRuleRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->isRuleRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    if-eqz v2, :cond_0

    const-string v2, "CameraExecutorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraSettingChanged others: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    if-eqz v2, :cond_2

    const-string v2, "CameraExecutorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraSettingChanged  mLastNlgErrorType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathParam;->checkGroupTypeParameterByParamName(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportModeInCurrentState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logOutputParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportModeInCurrentState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v7}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const/16 v3, 0x3e8

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/RulePathParam;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/CameraExecutorManager;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logOutputParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {v7}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x24 -> :sswitch_0
        0x84 -> :sswitch_0
    .end sparse-switch
.end method

.method public release()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const-string v0, "CameraExecutorManager"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->removeMessages(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraExecutorManager;->clearInterimStateListener()V

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iput-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendResult(ZLjava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "CameraExecutorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendResult, success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", stateId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mInitBixbyApiThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathParam;->checkGroupTypeParameterByParamName(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_1

    const-string v3, "String"

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValueType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->isSupportChangeShootingModeWithCameraType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsSwitchedCameraForced:Z

    iput v5, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    iput-boolean v5, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mMainHandler:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz p2, :cond_4

    const-string v2, "CameraExecutorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current Request state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_1

    :cond_3
    const-string v2, "CameraExecutorManager"

    const-string v3, "ignore senResult"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getStateIDbyName(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public setAppList(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mAppList:Ljava/lang/String;

    return-void
.end method

.method public setExecutorCommandListener(Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mExecutorCommandListener:Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorCommandListener;

    return-void
.end method

.method public setIsWaitCommandResult(Z)V
    .locals 3

    const-string v0, "CameraExecutorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsWaitCommandResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z

    return-void
.end method
