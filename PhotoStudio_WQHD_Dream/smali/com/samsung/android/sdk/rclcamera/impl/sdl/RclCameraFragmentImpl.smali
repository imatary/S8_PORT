.class public Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;
.super Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;
.source "RclCameraFragmentImpl.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ExtraInfoListener;
.implements Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager$TemperatureManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;,
        Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_ENABLED_FEATURE:Ljava/lang/String; = "enabled_feature"

.field private static final BUNDLE_KEY_EXTRA_MARGIN:Ljava/lang/String; = "extra_margin"

.field private static final BUNDLE_KEY_MAX_CONTAINER_HEIGHT:Ljava/lang/String; = "max_height"

.field private static final BUNDLE_KEY_MAX_CONTAINER_WIDTH:Ljava/lang/String; = "max_width"

.field private static final MINIMUM_REMAIN_TIME_TO_RECORD:I = 0x2

.field private static final NUM_OF_SOUND_ID:I = 0x2

.field private static final NUM_SHUTTERSOUND_CHANNELS:I = 0x2

.field private static final SHUTTER_ANIMATION_DURATION:I = 0x64

.field public static final SOUND_ID_RECORDING_START:I = 0x0

.field public static final SOUND_ID_RECORDING_STOP:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static mNeedToStartPreview:Z


# instance fields
.field private focusedButton:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAfView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryLevel:I

.field private mBatteryTemperature:I

.field private final mBlackRectVISync:Landroid/os/ConditionVariable;

.field private mBroadcastReceiver:Lcom/samsung/android/sdk/rclcamera/impl/sdl/CameraBroadcastReceiver;

.field private mCallStateChangedListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;

.field private mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

.field private mCallback:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

.field private mCameraId:I

.field private mCameraOrientationEventManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;

.field private mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

.field private mCameraSoundIdToPlay:I

.field private mCameraSoundLoop:I

.field private mCameraSoundPool:Landroid/media/SoundPool;

.field private mCameraSoundPoolId:[I

.field private mCameraStreamVolume:F

.field private mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

.field private mCaptureEnabledByConsumer:Z

.field private mCaptureEnabledByProvider:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentCallState:I

.field private mEnabledFeature:I

.field private mErrorMsg:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

.field private mExpandCondition:Landroid/os/ConditionVariable;

.field private final mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

.field private mExtraMargin:I

.field private mFacing:I

.field private mFragment:Landroid/app/Fragment;

.field private mIsCharging:Z

.field private mIsDexMode:Z

.field private mIsFinishedByRestriction:Z

.field private mIsMicrophonePlugged:Z

.field private mIsMultiWindow:Z

.field private mIsMultipleCaptureMode:Z

.field private mIsTablet:Z

.field private mLastScreenRotation:I

.field private final mLowBatteryWarningLevel:I

.field private mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

.field private mMaxContainerSize:Landroid/util/Size;

.field private mMessageUI:Landroid/view/ViewGroup;

.field private mNotSupportZoomToast:Landroid/widget/Toast;

.field private mOriginalOrientation:I

.field private mPreviewBlackOverlay:Landroid/widget/ImageView;

.field private mRecordEnabledByConsumer:Z

.field private mRecordEnabledByProvider:Z

.field private mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

.field private mRequestCompleted:Z

.field private mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mTemperatureManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager;

.field private mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.56/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNeedToStartPreview:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAbstractImpl;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBlackRectVISync:Landroid/os/ConditionVariable;

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBatteryTemperature:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBatteryLevel:I

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraId:I

    iput-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBroadcastReceiver:Lcom/samsung/android/sdk/rclcamera/impl/sdl/CameraBroadcastReceiver;

    iput-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraOrientationEventManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;

    iput-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTemperatureManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsFinishedByRestriction:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMultipleCaptureMode:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordEnabledByProvider:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordEnabledByConsumer:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCaptureEnabledByProvider:Z

    iput-boolean v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCaptureEnabledByConsumer:Z

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExtraMargin:I

    iput-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateChangedListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;

    iput-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNotSupportZoomToast:Landroid/widget/Toast;

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCurrentCallState:I

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mFacing:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMicrophonePlugged:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsDexMode:Z

    const/16 v0, 0xe

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mEnabledFeature:I

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v4, v4}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMaxContainerSize:Landroid/util/Size;

    iput-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPool:Landroid/media/SoundPool;

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPoolId:[I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMultiWindow:Z

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpandCondition:Landroid/os/ConditionVariable;

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_NONE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mErrorMsg:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mFragment:Landroid/app/Fragment;

    iput-object p3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/AnimationUtil;->initialize(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CameraBroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CameraBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBroadcastReceiver:Lcom/samsung/android/sdk/rclcamera/impl/sdl/CameraBroadcastReceiver;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTemperatureManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_lowBatteryWarningLevel"

    const-string v3, "integer"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mLowBatteryWarningLevel:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->checkPermission(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->initializeImplementation()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->initCameraSound()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpandCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExtraMargin:I

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBlackRectVISync:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMessageUI:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCurrentCallState:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallback:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPoolId:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundIdToPlay:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraStreamVolume:F

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundLoop:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method private addChildView(ZZ)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, -0x2

    const/16 v7, 0xd

    const/4 v6, 0x0

    const/4 v5, -0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$id;->__cp__textureView:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->initialize(Landroid/content/Context;Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->setTextureView(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$drawable;->__cp__provider_preview_black_rect:I

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$layout;->__sdl__cp__camera_ui_tablet:I

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    iget v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mEnabledFeature:I

    invoke-virtual {v1, p0, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->initialize(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->updateRecordButton()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->updateCaptureButton()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->focusedButton:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->focusButton(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExtraMargin:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->setExtraMarginToShutterGroup(I)V

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$layout;->__sdl__cp__recording_ui_tablet:I

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->initialize(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExtraMargin:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->setExtraMarginToShutterGroup(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$layout;->__sdl__cp__af_ui:I

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAfView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$id;->__cp__textureView:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x7

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$id;->__cp__textureView:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x6

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$id;->__cp__textureView:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x8

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$id;->__cp__textureView:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAfView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    invoke-virtual {v1, v9}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAfView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->initialize(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$id;->__cp__textureViewWithMargin:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAfView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$layout;->__sdl__cp__message_ui:I

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMessageUI:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMessageUI:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$layout;->__sdl__cp__camera_ui_phone:I

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$layout;->__sdl__cp__recording_ui_phone:I

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    goto/16 :goto_1
.end method

.method private checkCallStateBusy()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "isVTCallOngoing. Camera is busy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_CALL:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->showErrorMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->onErrorOccurred(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPermission(Landroid/content/Context;)V
    .locals 3

    const-string v0, "android.permission.CAMERA"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "No CAMERA permission exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "android.permission.CAMERA permission is required."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "No WRITE_EXTERNAL_STORAGE permission exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE permission is required."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private getMaxContainerSizeForCurrentRotation()Landroid/util/Size;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMaxContainerSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMaxContainerSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMaxContainerSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMaxContainerSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleRecordingStart()V
    .locals 11

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    sget-object v5, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getVideoResolution()Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/MediaProfile;->getProfile(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/MediaProfile;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getVideoBitrate()I

    move-result v5

    if-ne v5, v9, :cond_0

    iget v4, v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/MediaProfile;->videoBitrate:I

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getAudioBitrate()I

    move-result v5

    if-ne v5, v9, :cond_1

    iget v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/MediaProfile;->audioBitrate:I

    :goto_1
    add-int v5, v4, v0

    div-int/lit8 v5, v5, 0x8

    invoke-static {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/StorageUtils;->getRemainTime(I)J

    move-result-wide v2

    const-wide/16 v6, 0x2

    cmp-long v5, v2, v6

    if-gez v5, :cond_2

    sget-object v5, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not enough space to record video: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/StorageUtils;->getAvailableStorage()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v7, v4, v0

    div-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    sget v6, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__not_enough_space:I

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getVideoBitrate()I

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getAudioBitrate()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->checkRequestSize()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    sget v6, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__message_size_limited:I

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isRecording()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCapturing()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallback:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;

    invoke-interface {v5}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;->onRecordAvailable()Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v6, "Recording is not available due to Consumer reply."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->notifyRecordButtonClicked()V

    invoke-virtual {p0, v8}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->lockOrientationChange(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->requestAudioFocus()V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil;->disableAlertSound(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getMaxVideoFileSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->setMaxVideoFileSize(J)V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->hide()V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->setCameraSetting(Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->show()V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->EXPAND_TO_RECORDER_SIZE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CHECK_ASPECT_TO_CAMCORDER_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->STOP_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->RECORD_PARAM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v7, v8, [Ljava/lang/Object;

    const-string v8, "for_record"

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->PREPARE_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    sget-object v5, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v6, "Ignore. Recording state."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private handleRecordingStop(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRequestCompleted:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Fragment is already detached. No more control is valid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$20;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$20;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isEngineStarted()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Engine is stopped. Camera command cannot be scheduled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->PAUSE_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->removeCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->RESUME_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->removeCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CANCEL_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->LOCK_ORIENTATION:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CHECK_ASPECT_TO_CAMERA_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->STOP_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CAMERA_PARAM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->NOTIFY_RECORDING_FINISHED:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->STOP_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private initCameraSound()V
    .locals 9

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v2, 0x1

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const-string v3, "CAMERA"

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->addAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v8

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getForcedShutterSound()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-static {v4}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    :goto_0
    invoke-virtual {v8}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v3, "load recording sound"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPoolId:[I

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$raw;->__cp__cam_start:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v6

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPoolId:[I

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$raw;->__cp__cam_stop:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v8, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0
.end method

.method private initializeImplementation()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    return-void
.end method

.method private updateCaptureButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCaptureEnabledByProvider:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCaptureEnabledByConsumer:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->setCaptureButtonDim(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->setCaptureButtonDim(Z)V

    goto :goto_0
.end method

.method private updateRecordButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordEnabledByProvider:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordEnabledByConsumer:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->setRecordButtonDim(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->setRecordButtonDim(Z)V

    goto :goto_0
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public declared-synchronized checkRotation(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mLastScreenRotation:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isEngineStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->getCommandQueue()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CLOSE_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->searchRequest(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->updateTextureViewSize()V

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mLastScreenRotation:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCameraErrorHappened()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->updateTextureViewOrientation()V

    :cond_1
    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mLastScreenRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public checkSecurityService()Z
    .locals 5

    const/4 v4, 0x5

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil;->checkCameraLockedByMDM()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v2, "CAMERA is disabled by CscFeatureTagCamera.TAG_CSCFEATURE_CAMERA_SECURITYMDMSERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_MDM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->showErrorMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->onErrorOccurred(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil;->checkCameraDisabledByDMP(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/RestrictionPolicyUtil;->isCameraRestricted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v2, "CAMERA is disabled by Policy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_MDM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->showErrorMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->onErrorOccurred(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableCaptureButton(ZZ)V
    .locals 4

    if-eqz p2, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCaptureEnabledByProvider:Z

    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", enable : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", requested by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    const-string v0, "Provder"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCaptureEnabledByProvider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCaptureEnabledByProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCaptureEnabledByConsumer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCaptureEnabledByConsumer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCaptureEnabledByProvider:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCaptureEnabledByConsumer:Z

    if-nez v0, :cond_3

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Capture Dim is ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCaptureEnabledByConsumer:Z

    goto :goto_0

    :cond_2
    const-string v0, "Consumer"

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->setCaptureButtonDim(Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->setCaptureButtonDim(Z)V

    goto :goto_2
.end method

.method public enableRecordButton(ZZ)V
    .locals 4

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordEnabledByProvider:Z

    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", enable : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", requested by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v0, "Provder"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRecordEnabledByProvider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordEnabledByProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRecordEnabledByConsumer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordEnabledByConsumer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil;->isVoiceCallOnGoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordEnabledByConsumer:Z

    goto :goto_0

    :cond_1
    const-string v0, "Consumer"

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordEnabledByProvider:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordEnabledByConsumer:Z

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Record Dim is ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->setRecordButtonDim(Z)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->setRecordButtonDim(Z)V

    goto :goto_2
.end method

.method public enableSwitchButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->setSwitchButtonEnabled(Z)V

    return-void
.end method

.method public forceSwitchCamera(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraId:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->handleSwitchCamera()V

    return-void
.end method

.method public getCameraId()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getCameraId()I

    move-result v0

    return v0
.end method

.method public getCameraUI()Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    return-object v0
.end method

.method public getCurrentCallState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCurrentCallState:I

    return v0
.end method

.method public getEngine()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    return-object v0
.end method

.method public getMaximumContainerHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getMaxContainerSizeForCurrentRotation()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method public getMaximumContainerWidth()I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getMaxContainerSizeForCurrentRotation()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method public getRecordingUI()Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    return-object v0
.end method

.method public getSetting()Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    return-object v0
.end method

.method public getSupportedFacing()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getSupportedFacing()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPictureSizes(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v4, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getSupportedCameraResolution(I)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v4, ","

    invoke-static {v1, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    new-instance v4, Landroid/util/Size;

    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_1
.end method

.method public getSupportedVideoSizes(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v4, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getSupportedVideoResolution(I)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v4, ","

    invoke-static {v1, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    new-instance v4, Landroid/util/Size;

    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_1
.end method

.method public getTextureViewHeight()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTextureViewWidth()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getVisibleAreaRatio()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    goto :goto_1
.end method

.method protected handleBatteryChanged(Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "status"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "level"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "plugged"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "temperature"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBatteryTemperature:I

    sget-object v4, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleBatteryChanged : Level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", battPlugged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", battTemp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBatteryTemperature:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mLowBatteryWarningLevel:I

    if-gt v3, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v4, v8}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setLowBatteryStatus(Z)V

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    const-string v5, "off"

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->isCurrentFlashMode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    const-string v5, "off"

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setFlash(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->updateFlashButton()V

    :cond_0
    :goto_0
    mul-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v1

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBatteryLevel:I

    iput-boolean v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsCharging:Z

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-ne v0, v8, :cond_2

    :cond_1
    iput-boolean v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsCharging:Z

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v4, v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setLowBatteryStatus(Z)V

    goto :goto_0
.end method

.method public handleGalleryButtonClicked()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Return. Camera is busy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$2;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public handleRecordingCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCameraErrorHappened()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Camera error. Ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMultipleCaptureMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRequestCompleted:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording/Capture is completed already. Feature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mEnabledFeature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil;->isMicrophoneDisabledByMDM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__microphone_restrict:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Microphone disabled by mdm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMultiWindow:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$3;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$21;->$SwitchMap$com$samsung$android$sdk$rclcamera$impl$sdl$ui$layout$CameraRecordingUI$RECORDING_COMMAND:[I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMultiWindow:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->handleRecordingStart()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->handleRecordingStop(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->handleRecordingStop(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->PAUSE_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->RESUME_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handleRecordingProgressed()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->getRecordingTime()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->getRecordingTimeInSecond()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->getRecordingTimeInSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->updateRecordingTime(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->getVideoFileLengthInByte()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->updateRecordingSize(J)V

    goto :goto_0
.end method

.method public handleShutterButton(I)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCameraErrorHappened()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Camera error. Ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMultipleCaptureMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRequestCompleted:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording/Capture is completed already. Feature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mEnabledFeature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/StorageUtils;->getRemainCount(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space to take picture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/StorageUtils;->getAvailableStorage()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/StorageUtils;->getRemainCount(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__not_enough_space:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallback:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;->onCaptureAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Capture is not available due to Consumer reply."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->requestTransientAudioFocus()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->TAKE_PICTURE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRequestCompleted:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleSwitchCamera()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCameraErrorHappened()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Camera error. Ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMultipleCaptureMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRequestCompleted:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording/Capture is completed already. Feature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mEnabledFeature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAfView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAfView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->initZoomValue()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->setZoom()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CHECK_ASPECT_FOR_SWITCH_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->STOP_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CLOSE_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraId:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->SWITCH_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->OPEN_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->INITIALIZE_PARAM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraId:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->SWITCH_TO_REAR_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraId:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->SWITCH_TO_FRONT_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraId:I

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Ignore switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public hideBlackOverlay()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public initialize(ZII)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", facing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", feature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isTablet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mFacing:I

    iput p3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mEnabledFeature:I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsTablet:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setCameraFacing(I)V

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mEnabledFeature:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMultipleCaptureMode:Z

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultipleCaptureMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMultipleCaptureMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrontBeautyRequested()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mEnabledFeature:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMicrophonePlugged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMicrophonePlugged:Z

    return v0
.end method

.method public keepDeviceOn(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$4;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public lockOrientationChange(Z)V
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "lock"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Activity is null. return."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const-string v0, "unlock"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mOriginalOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method public notifyCoverStateChanged(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isCoverOpened : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "State Cover Open"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Stop Recording by cover-close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->doStop(Z)V

    goto :goto_0
.end method

.method public declared-synchronized notifyDexModeState(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDexMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsDexMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyMultiWindowStateChanged(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isMultiWindow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMultiWindow:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMultiWindow:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setMultiwindowState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyRecordButtonClicked()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$5;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyRecordingFinished()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$6;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyRecordingStarted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$7;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCameraOpened()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$8;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onErrorOccurred(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$9;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$9;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExtraInfo(IILcom/sec/android/seccamera/SecCamera;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExtraInfo arg0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", arg1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_0

    if-ne p2, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->setFlashAutoEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->setFlashAutoEnabled(Z)V

    goto :goto_0
.end method

.method public onImageStoringComplete(Landroid/net/Uri;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$10;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$10;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLayout()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->checkRotation(Z)V

    return-void
.end method

.method public onMaxDurationLimitReached()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->doStop(Z)V

    return-void
.end method

.method public onMaxVideoSizeReached()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->doStop(Z)V

    return-void
.end method

.method public onShutterButtonClicked()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$11;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSwitchButtonClicked()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$12;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTemperatureManagerChanged(ZZ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limitFlash : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limitRec : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setTemperatureHighToUseFlash(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->isCurrentFlashMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setFlash(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->updateFlashButton()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__temperature_too_high_change_flash_off:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->getRecordingState()Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_START:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->getRecordingState()Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_PAUSED:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Stop recording by temperature manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__temperature_too_high_recording_disable:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->getRecordingTime()I

    move-result v0

    if-ge v0, v5, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->doCancel()V

    :cond_2
    :goto_1
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->enableRecordButton(ZZ)V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setTemperatureHighToUseFlash(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->doStop(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5, v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->enableRecordButton(ZZ)V

    goto :goto_2
.end method

.method public onTemperatureManagerStopCamera()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoStoringComplete(Landroid/net/Uri;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$13;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$13;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pauseRecord()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called by consumer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_PAUSE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->handleRecordingCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;)V

    return-void
.end method

.method public perform_onAttach(Landroid/app/Activity;Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v2, "Get Lopper from myLooper()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallbackHandler:Landroid/os/Handler;

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallback:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mOriginalOrientation:I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v2, "Get Lopper from getMainLooper()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallbackHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v2, "No Looper! No Callback!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallbackHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public perform_onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAfView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAfView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is returned due to recording."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->setFocusedButtons()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->focusedButton:Ljava/lang/String;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : ORIENTATION_LANDSCAPE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$id;->__cp__textureViewWithMargin:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAfView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsTablet:Z

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->addChildView(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->updateUIforCameraChange()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mErrorMsg:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->showErrorMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;)V

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : ORIENTATION_PORTRAIT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$id;->__cp__textureViewWithMargin:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAfView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsTablet:Z

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->addChildView(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->updateUIforCameraChange()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mErrorMsg:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->showErrorMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;)V

    goto/16 :goto_0
.end method

.method public perform_onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "enabled_feature"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mEnabledFeature:I

    const-string v0, "extra_margin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExtraMargin:I

    new-instance v0, Landroid/util/Size;

    const-string v1, "max_width"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "max_height"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMaxContainerSize:Landroid/util/Size;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->readFromBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public perform_onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$layout;->__sdl__cp__main:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;->initialize(Landroid/content/Context;Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsTablet:Z

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->addChildView(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->updateUIforCameraChange()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMainLayout:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraUIContainer;

    return-object v0
.end method

.method public perform_onDestroy()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTemperatureManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager;

    if-eqz v0, :cond_1

    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTemperatureManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    if-eqz v0, :cond_2

    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBroadcastReceiver:Lcom/samsung/android/sdk/rclcamera/impl/sdl/CameraBroadcastReceiver;

    if-eqz v0, :cond_3

    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBroadcastReceiver:Lcom/samsung/android/sdk/rclcamera/impl/sdl/CameraBroadcastReceiver;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_4

    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraOrientationEventManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;

    if-eqz v0, :cond_5

    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraOrientationEventManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPoolId:[I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    :cond_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public perform_onDetach()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public perform_onExpansionFinish(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpandCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

.method public perform_onExpansionStart(Z)V
    .locals 0

    return-void
.end method

.method public declared-synchronized perform_onPause()V
    .locals 6

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_NONE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mErrorMsg:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMessageUI:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->hide()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsFinishedByRestriction:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsFinishedByRestriction:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->waitForStartPreviewThreadComplete()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->PREVIEW_STARTING:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->CAPTURING:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->getCommandQueue()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->STOP_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->isFirstRequest(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->getCommandQueue()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->clearRequests()V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->getCommandQueue()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->PREPARE_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->searchRequest(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->getCommandQueue()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->PREPARE_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->removeRequest(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->getCommandQueue()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->searchRequest(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->getCommandQueue()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->removeRequest(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->waitForStartRecordingThreadComplete()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->getRecordingTime()I

    move-result v1

    if-ge v1, v4, :cond_9

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->doCancel()V

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTemperatureManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTemperatureManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager;->unregisterTemperatureManagerListener()V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBroadcastReceiver:Lcom/samsung/android/sdk/rclcamera/impl/sdl/CameraBroadcastReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CameraBroadcastReceiver;->unregisterReceivers()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isZoomAvailable()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->initZoomValue()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->setZoom()V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->LOCK_ORIENTATION:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->STOP_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CLOSE_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->onPause()V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CallState;->unregisterCallstateListener(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;->setOnCallStateChangedListener(Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener$onCallStateChangedListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateChangedListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->doStop(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_a
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNotSupportZoomToast:Landroid/widget/Toast;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNotSupportZoomToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNotSupportZoomToast:Landroid/widget/Toast;

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->abandonAudioFocus()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized perform_onResume()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.voicenote.rec_save"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.voicenote.Controller"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraOrientationEventManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->checkSecurityService()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->checkCallStateBusy()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsFinishedByRestriction:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCameraErrorHappened()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v2, "Camera in error state. RclCameraProvider is not recoverable from this state. Need to create new instance."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_UNABLE_TO_USE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->showErrorMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->onErrorOccurred(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v2, "Camera setting is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_UNABLE_TO_USE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->showErrorMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->onErrorOccurred(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->abandonAudioFocus()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRequestCompleted:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBroadcastReceiver:Lcom/samsung/android/sdk/rclcamera/impl/sdl/CameraBroadcastReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CameraBroadcastReceiver;->registerReceivers()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTemperatureManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTemperatureManager:Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager;->registerTemperatureManagerListener(Lcom/samsung/android/sdk/rclcamera/impl/sdl/TemperatureManager$TemperatureManagerListener;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mLastScreenRotation:I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->onResume()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->OPEN_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->INITIALIZE_PARAM:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    sget-boolean v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNeedToStartPreview:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil;->isVoiceCallOnGoing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCurrentCallState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->enableRecordButton(ZZ)V

    :cond_7
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    invoke-direct {v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;-><init>()V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$1;)V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateChangedListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateChangedListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;->setOnCallStateChangedListener(Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener$onCallStateChangedListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CallState;->registerCallStateListener(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;-><init>(I)V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$1;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$1;)V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateChangedListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateChangedListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$CallStateChangedListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;->setOnCallStateChangedListener(Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener$onCallStateChangedListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallStateListener:[Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CallState;->registerCallStateListener(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public perform_onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "enabled_feature"

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mEnabledFeature:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "extra_margin"

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExtraMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "max_width"

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMaxContainerSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "max_height"

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMaxContainerSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->writeToBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public perform_onStart()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public perform_onStop()V
    .locals 5

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playCameraSound(II)V
    .locals 8

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playCameraSound - soundId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", loop:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "playCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=5;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraStreamVolume:F

    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundIdToPlay:I

    iput p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSoundLoop:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mSoundPlayThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$14;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public requestAudioFocus()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public requestEnableCapture(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->enableCaptureButton(ZZ)V

    return-void
.end method

.method public requestEnableRecord(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->enableRecordButton(ZZ)V

    return-void
.end method

.method public requestEnableSwitchButton(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->enableSwitchButton(Z)V

    return-void
.end method

.method public requestExpandAndWait()V
    .locals 6

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpandCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Request expansion."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$15;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expansion done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpandCondition:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public requestStartPreview()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    return-void
.end method

.method public requestStopPreview()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->STOP_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    return-void
.end method

.method public requestStopRecording()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->getRecordingState()Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_START:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->getRecordingState()Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_PAUSED:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->getRecordingTime()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->doCancel()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->doStop(Z)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore stop command. Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->getRecordingState()Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestTransientAudioFocus()V
    .locals 4

    const/4 v3, 0x3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1, v3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bitrate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setAudioBitrate(I)V

    return-void
.end method

.method public setAudioChannels(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numChannels : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setAudioChannels(I)V

    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encoder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setAudioEncoder(I)V

    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", samplingRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setAudioSamplingRate(I)V

    return-void
.end method

.method public setFlashState(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called by consumer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->isLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__plugged_low_batt_msg:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->isTemperatureHighToUseFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__temperature_too_high_flash_off:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCameraErrorHappened()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Camera error. Ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->checkFlashModeSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setFlash(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->updateFlashButton()V

    goto :goto_0
.end method

.method public setMaxContainerSize(Landroid/util/Size;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given size is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", container size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMaxContainerSize:Landroid/util/Size;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isEngineStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->getCommandQueue()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->CLOSE_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->searchRequest(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->updateTextureViewSize()V

    :cond_2
    return-void
.end method

.method public setMaxVideoFileSize(J)V
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max_filesize_bytes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setMaxVideoFileSize(J)V

    return-void
.end method

.method protected setMicrophonePlugged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mIsMicrophonePlugged:Z

    return-void
.end method

.method public setMultiwindowState(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", multiwindowState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setMultiwindowState(Z)V

    return-void
.end method

.method public setNeedToStartPreview(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNeedToStartPreview:Z

    return-void
.end method

.method public setPictureSize(III)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", facing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setCameraResolution(ILcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;)V

    return-void
.end method

.method public setShutterBoxExtraMargin(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Extra margin must greater than or equal to zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExtraMargin:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$16;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setTouchAfPosition(II)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAfView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mAfView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->setTouchAfPosition(II)V

    :cond_0
    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bitrate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setVideoBitrate(I)V

    return-void
.end method

.method public setVideoEncoder(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encoder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setVideoEncoder(I)V

    return-void
.end method

.method public setVideoFrameRate(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frameRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setVideoFrameRate(I)V

    return-void
.end method

.method public setVideoMaxDuration(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setVideoMaxDuration(I)V

    return-void
.end method

.method public setVideoOutputFormat(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outputFormat : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setVideoOutputFormat(I)V

    return-void
.end method

.method public setVideoSize(III)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", facing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/setting/CameraSetting;->setVideoResolution(ILcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil$Size;)V

    return-void
.end method

.method public showBlackOverlay()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showBlackOverlayWithAnimation(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBlackRectVISync:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showErrorMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mErrorMsg:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    const-string v1, "Activity is detached. return."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showNotSupportZoomToast()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNotSupportZoomToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNotSupportZoomToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNotSupportZoomToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNotSupportZoomToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNotSupportZoomToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNotSupportZoomToast:Landroid/widget/Toast;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__not_supported_zoom_toast_popup:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNotSupportZoomToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mNotSupportZoomToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public showRecordingTime()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->startUpdateUI()V

    return-void
.end method

.method public startRecord()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called by consumer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_START:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->handleRecordingCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;)V

    return-void
.end method

.method public startShutterAnimation()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$19;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$19;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopRecord()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called by consumer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_STOP:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->handleRecordingCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;)V

    return-void
.end method

.method public takePicture()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called by consumer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->handleShutterButton(I)V

    return-void
.end method

.method public updateUIforCameraChange()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->updateInterfaceForCameraChange()V

    return-void
.end method

.method public waitForAspectVI()V
    .locals 6

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mBlackRectVISync:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "done"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "timeout"

    goto :goto_0
.end method
