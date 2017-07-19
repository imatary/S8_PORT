.class public Lcom/sec/android/app/camera/shootingmode/RecordingController;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
.implements Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;
    }
.end annotation


# static fields
.field protected static final ANIMATION_DURATION_100:I = 0x64

.field protected static final ANIMATION_DURATION_130:I = 0x82

.field protected static final ANIMATION_DURATION_300:I = 0x12c

.field protected static final ANIMATION_DURATION_470:I = 0x1d6

.field protected static final ANIMATION_DURATION_570:I = 0x23a

.field protected static final BLINK_REC_INDICATOR_INTERVAL:I = 0x1f4

.field private static final CHECK_RECORDING_TICK_TIME_INTERVAL:I = 0x64

.field private static final CHECK_RECORDING_TICK_TIME_MSG:I = 0x1

.field protected static final DB_RECORDINGMODE_FAST_MOTION:Ljava/lang/String; = "2"

.field protected static final DB_RECORDINGMODE_HYPER_MOTION:Ljava/lang/String; = "5"

.field protected static final DB_RECORDINGMODE_KEY:Ljava/lang/String; = "recording_mode"

.field protected static final DB_RECORDINGMODE_MULTI_TRACK:Ljava/lang/String; = "4"

.field protected static final DB_RECORDINGMODE_SLOW_MOTION:Ljava/lang/String; = "1"

.field protected static final DEFAULT_RECORDING_FPS:I = 0x7530

.field protected static final MAX_VIDEO_FILE_SIZE:J = 0xffffffffL

.field protected static final MILLISECONDS_IN_AN_HOUR:I = 0x36ee80

.field protected static final MINIMUM_REMAIN_TIME_TO_SNAPSHOT:I = 0x5

.field protected static final ONE_SECOND:I = 0x1

.field protected static final RECORDING_EVENT_CANCELLED:I = 0x4

.field protected static final RECORDING_EVENT_PAUSED:I = 0x2

.field protected static final RECORDING_EVENT_RESUMED:I = 0x1

.field protected static final RECORDING_EVENT_STARTED:I = 0x0

.field protected static final RECORDING_EVENT_STOPPED:I = 0x3

.field protected static final RECORDING_TICK_INTERVAL_DEFAULT:I = 0x3e8

.field protected static final RECORDING_TICK_INTERVAL_MAX:I = 0x3e8

.field protected static final RECORDING_TICK_INTERVAL_MIN:I = 0x64

.field protected static final SECONDS_IN_A_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "RecordingController"

.field protected static final UNLIMITED_RECORDING_TIME:I = -0x1


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentRecordingFileSize:J

.field private mCurrentRecordingFileTime:J

.field private mCurrentRecordingTimeInMilliSecond:J

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mInfoDateTaken:J

.field private mInfoDisplayName:Ljava/lang/String;

.field private mInfoMimeType:Ljava/lang/String;

.field private mInfoTitle:Ljava/lang/String;

.field private mIsCustomEffectRecording:Z

.field private mIsRecordingFailedByVideoCapability:Z

.field private mIsRecordingFailedByWifiDisplayNotAllowed:Z

.field private mIsRecordingRestrictedByCallState:Z

.field private mIsRecordingRestrictedByOverHeat:Z

.field private mIsRecordingTimeLimitedByLowStorage:Z

.field private mIsRecordingTimeLimitedByProfile:Z

.field private mIsRecordingTimeLimitedBySystem:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMaxRecordingTimeLimitBySystem:I

.field private mMaxRecordingTimeLimitInMS:I

.field private mMaxVideoFileSize:J

.field private mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

.field private mPreviousRecordingTime:J

.field private mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

.field private mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

.field private mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

.field private mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

.field private mTempVideoFilename:Ljava/lang/String;

.field private mTickInterval:I

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilenameWithPath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByProfile:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsCustomEffectRecording:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/RecordingController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(ZZ)V

    return-void
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    return p1
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/RecordingController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->handleRecordingError(I)V

    return-void
.end method

.method private checkRecordingTickTime()V
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iget-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingTick(JJ)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method private clearFileResources()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRequestedFileUriForAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecordingController"

    const-string v1, "onRecordingCancelled - failed to delete"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->closeFileDescriptor()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private closeFileDescriptor()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getMaxRecordingTimeLimitBySystem()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    return v0
.end method

.method private handleRecordingError(I)V
    .locals 7

    const/4 v6, -0x4

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRecordingError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setRecordingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onCancelRecordingRequested()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "RecordingController"

    const-string v1, "Return, camera is finishing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onCancelRecordingRequested()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    if-eqz v0, :cond_6

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "RecordingController"

    const-string v1, "Return, camera is finishing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onCancelRecordingRequested()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ERROR_RECORDING_START_FAIL:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->clearFileResources()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingEvent(I)V

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isEffectRecording()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(II)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsCustomEffectRecording:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPreviewAngleChangeAnimationNeeded()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxSupportedPictureSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraResolution;->getAspectRatioType(I)I

    move-result v1

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraResolution;->getAspectRatioType(I)I

    move-result v0

    if-ne v3, v5, :cond_2

    if-ne v1, v5, :cond_2

    if-nez v0, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v6

    if-ne v6, v5, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method private isRequestedFileUriForAttachMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyRecordingInfo(Z)V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    if-nez v0, :cond_0

    const-string v0, "RecordingController"

    const-string v2, "notifyRecordingInfo return - MediaRecorder is not prepared yet"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Camera_recordingDual"

    invoke-static {v0, v2, p1}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v9

    const/16 v0, 0x3c

    if-lt v9, v0, :cond_3

    const-string v1, "Camera_recording_over_60fps"

    :goto_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isEffectRecording()Z

    move-result v7

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/Util;->notifyRecordingInfo(Landroid/content/Context;Ljava/lang/String;ZIIILjava/lang/String;ZZ)V

    goto :goto_0

    :cond_3
    const-string v1, "Camera_recording"

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private registerVideo()V
    .locals 2

    const-string v0, "RecordingController"

    const-string v1, "registerVideo"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRequestedFileUriForAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->closeFileDescriptor()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onVideoStoringCompleted(Landroid/net/Uri;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->renameVideoFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->makeHighLightVideoFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentFilePath(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->validateFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "RecordingController"

    const-string v1, "mCurrentVideoFilename NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->insertToDBForVideo()V

    goto :goto_0
.end method

.method private restrictRecording(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(ZZ)V

    return-void
.end method

.method private restrictRecording(ZZ)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v0, "RecordingController"

    const-string v1, "restrictRecording : true"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingRestricted(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    if-nez v0, :cond_0

    const-string v0, "RecordingController"

    const-string v1, "restrictRecording : false"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0, v2, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingRestricted(ZZ)V

    goto :goto_0
.end method

.method private startRecordingTickTimer()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopInactivityTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingTick(JJ)V

    return-void
.end method

.method private updateMaxRecordingTime(I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getMaxRecordingTimeLimitBySystem()I

    move-result v3

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v5

    const/16 v6, 0x1e

    if-le v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v5

    div-int/lit8 v5, v5, 0x1e

    mul-int/2addr v4, v5

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAudioRecording()I

    move-result v5

    if-ne v5, v8, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioEncodingBitrate()I

    move-result v0

    :cond_1
    add-int v1, v4, v0

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v5

    invoke-static {v5, v1}, Lcom/sec/android/app/camera/util/StorageUtils;->getRemainTime(II)I

    move-result v5

    mul-int/lit16 v2, v5, 0x3e8

    const v5, 0x36ee80

    if-ge v2, v5, :cond_6

    iput-boolean v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    :goto_0
    if-eq p1, v7, :cond_7

    iput-boolean v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByProfile:Z

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingDurationLimit()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingDurationLimit()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    :cond_2
    iget-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    if-ne v5, v7, :cond_8

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    :cond_3
    :goto_2
    iget-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    if-ne v5, v7, :cond_9

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    :cond_4
    :goto_3
    iget-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByProfile:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    if-ne v5, v7, :cond_a

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    :cond_5
    :goto_4
    const-string v5, "RecordingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMaxRecordingTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iput-boolean v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    goto :goto_0

    :cond_7
    iput-boolean v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByProfile:Z

    goto :goto_1

    :cond_8
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    if-ge v3, v5, :cond_3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    goto :goto_2

    :cond_9
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    if-ge v2, v5, :cond_4

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    goto :goto_3

    :cond_a
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    if-ge p1, v5, :cond_5

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    goto :goto_4
.end method

.method private updateThumbnail()V
    .locals 8

    const/16 v7, 0xd

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRequestedFileUriForAttachMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v3, v4, v2, v1, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v3, v4, v6, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateThumbnail(Landroid/graphics/Bitmap;IZ)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v3, v2, v1, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateLatestMedia()V

    goto :goto_0

    :cond_3
    const-string v3, "RecordingController"

    const-string v4, "Skip post capture animation"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected createNewVideoPath(IZLjava/lang/String;)Ljava/lang/String;
    .locals 16

    invoke-static/range {p1 .. p2}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->createVideoDirectory(IZ)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v14, "RecordingController"

    const-string v15, "recording directory make fail"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_0
    const/4 v7, 0x0

    const/4 v12, 0x0

    const-string v14, "video/3gpp"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v7, ".3gp"

    const-string v12, "video/3gpp"

    :goto_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v4

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    const-string v14, "yyyyMMdd_kkmmss"

    invoke-static {v14, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "RecordingController"

    const-string v15, "Duplicated file name found"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    const-string v14, "yyyyMMdd_kkmmss"

    invoke-static {v14, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v14, "RecordingController"

    const-string v15, "New file name created"

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v10, v11

    goto :goto_2

    :cond_1
    const-string v7, ".mp4"

    const-string v12, "video/mp4"

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoDisplayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoDateTaken:J

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoMimeType:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected finishRecordingPreviewVI()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCamcorderPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleRequestNotifyPreviewStarted()V

    goto :goto_0
.end method

.method protected getCurrentRecordingFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    return-wide v0
.end method

.method protected getCurrentRecordingFileTimeInSecond()J
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected getMaxRecordingTimeLimitInSecond()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method protected getMaxVideoFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    return-wide v0
.end method

.method protected getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    return-object v0
.end method

.method protected getRemainRecordingTime()I
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v4

    if-ne v4, v6, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v4

    const/16 v5, 0x1e

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v4

    div-int/lit8 v4, v4, 0x1e

    mul-int/2addr v3, v4

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAudioRecording()I

    move-result v4

    if-ne v4, v6, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioEncodingBitrate()I

    move-result v0

    :cond_1
    add-int v1, v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/util/StorageUtils;->getRemainTime(II)I

    move-result v2

    :cond_2
    return v2
.end method

.method protected getTotalRecordingTime()J
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected insertToDBForVideo()V
    .locals 10

    const-string v6, "RecordingController"

    const-string v7, "insertDBForVideo start"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "title"

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoTitle:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_display_name"

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "datetaken"

    iget-wide v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoDateTaken:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "mime_type"

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoMimeType:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_data"

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "recordingtype"

    const-string v7, "0"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_size"

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    const-string v6, "resolution"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "width"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "height"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_1

    const-string v6, "video_codec_info"

    const-string v7, "H.263"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "audio_codec_info"

    const-string v7, "AMR"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v6, "langagecode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "addr"

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v7}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getAddressValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v6}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v6, "latitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v6, "longitude"

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_0
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-string v6, "duration"

    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v6, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "RecordingController"

    const-string v7, "do not update DB."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_1
    const-string v6, "video_codec_info"

    const-string v7, "H.264"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "audio_codec_info"

    const-string v7, "AAC"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v1, v6

    :goto_3
    :try_start_1
    const-string v6, "RecordingController"

    const-string v7, "setDataSource failed"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "duration"

    iget-wide v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v6

    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://media/external/video/media"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->setContentUri(Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->setContentVideoType(Z)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v6}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getAddressValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVideoIDListHaveAddress()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_4
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addUriListInSecureCamera(Landroid/net/Uri;)V

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v6}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onVideoStoringCompleted()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->updateThumbnail()V

    :cond_5
    const-string v6, "RecordingController"

    const-string v7, "insertDBForVideo end"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_1
    move-exception v5

    const-string v6, "RecordingController"

    const-string v7, "Not enough space in database"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v7, 0x7f0901c8

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :catch_2
    move-exception v1

    :goto_5
    const-string v6, "RecordingController"

    const-string v7, "insert failed"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    :catch_3
    move-exception v1

    const-string v6, "RecordingController"

    const-string v7, "ContentResolver insert failed"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_4
    move-exception v6

    move-object v1, v6

    goto/16 :goto_3

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_5
.end method

.method protected isRecordingControlAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingRestricted()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "RecordingController"

    const-string v2, "RecordingRestricted - over heat temperature"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v1

    if-ne v1, v0, :cond_3

    :cond_2
    const-string v1, "RecordingController"

    const-string v2, "RecordingRestricted - calling"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingTimeLimited()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingDurationLimit()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - requested recording duration limit"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    if-eqz v1, :cond_1

    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - system limitation"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v1, :cond_2

    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - low storage"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByProfile:Z

    if-eqz v0, :cond_3

    const-string v0, "RecordingController"

    const-string v1, "RecordingTimeLimited - recorder profile"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSnapshotAvailable()Z
    .locals 4

    const/4 v2, 0x0

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(II)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotAvailableFeature(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isStopAndRestartRecordingAvailable()Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getMaxVideoFileSize()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v2

    const-wide/32 v4, 0x1400000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected limitRecordingTimeBySystem(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    return-void
.end method

.method public onChangeCamcorderParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 9

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    const-string v6, "RecordingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onChangeCamcorderParameters : facing = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", camcorderResolutionId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isSnapshotAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotWidthFeature(II)I

    move-result v3

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotHeightFeature(II)I

    move-result v2

    const-string v6, "RecordingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPictureSize : pictureWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pictureHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPictureSize(II)V

    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/camera/util/Util;->findThumbnailSize(Ljava/util/List;II)Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v6, v4, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    iget v7, v4, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-virtual {p1, v6, v7}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setJpegThumbnailSize(II)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    const-string v0, "RecordingController"

    const-string v1, "onError - MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onCancelRecordingRequested()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const-string v0, "RecordingController"

    const-string v1, "onError - MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onStopRecordingRequested(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto :goto_0
.end method

.method public onImageEffectInfo(Ljava/lang/String;)V
    .locals 6

    const-string v1, "RecordingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSecImagingString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "multiduration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    if-nez v0, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->startRecordingTickTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "multimaxduration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "RecordingController"

    const-string v4, "onImageEffectInfo - MAX_DURATION_REACHED"

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingMaxDurationReached()V

    goto :goto_0

    :cond_2
    const-string v1, "multimaxsize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "RecordingController"

    const-string v4, "onImageEffectInfo - MAX_FILESIZE_REACHED"

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingMaxFileSizeReached()V

    goto :goto_0

    :cond_3
    const-string v1, "multisize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 6

    const/16 v0, 0x320

    if-ne p2, v0, :cond_2

    const-string v0, "RecordingController"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RecordingController"

    const-string v1, "onInfo - already scheduled to stop video recording so returned."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingTick(JJ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingMaxDurationReached()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x321

    if-ne p2, v0, :cond_3

    const-string v0, "RecordingController"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingMaxFileSizeReached()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x384

    if-ne p2, v0, :cond_4

    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    goto :goto_0

    :cond_4
    const/16 v0, 0x385

    if-ne p2, v0, :cond_0

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo - MEDIA_RECORDER_INFO_DURATION_PROGRESS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->startRecordingTickTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    goto :goto_0
.end method

.method public onMediaRecorderPrepared(Landroid/media/MediaRecorder;)V
    .locals 12

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v5

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    invoke-direct {v1, v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;-><init>(I)V

    const-string v8, "RecordingController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCamcorderProfile : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/Engine;->isEffectProcessing()Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0x18

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoFrameRate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoSource(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    sget-object v8, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->EffectVideoBitrateTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoEncodingBitrate(Landroid/util/SparseArray;)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    :cond_0
    const/16 v8, 0x2a

    if-ne v5, v8, :cond_1

    const/16 v8, 0x3c

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoFrameRate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v8, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onBuildMediaRecorderProfile(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)V

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->build()Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    const/16 v0, 0x8

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    move-result-object v8

    iget v8, v8, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    move-result-object v8

    iget v8, v8, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    div-int/lit8 v4, v8, 0x8

    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v6

    int-to-long v8, v4

    cmp-long v8, v6, v8

    if-gez v8, :cond_3

    const-string v8, "RecordingController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkExtraSizeLimit - size limit failed. finish. requestedRecordingSizeLimit : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", minBytesToRecordOneSec : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/camera/shootingmode/RecordingController$2;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$2;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result v8

    div-int/lit8 v4, v8, 0x8

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->dumpProfile()V

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRequestedFileUriForAttachMode()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->closeFileDescriptor()V

    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v9

    const-string v10, "rw"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->setContentUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    :cond_4
    :goto_3
    :try_start_1
    iget-wide v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    invoke-virtual {p1, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoSource()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAudioRecording()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioSource()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_5
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->semSetAuthor(I)V

    const/16 v8, 0x1f4

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->semSetDurationInterval(I)V

    const/16 v8, 0x2a

    if-ne v5, v8, :cond_6

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->semSetIframeInterval(I)V

    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getFileSizeInterval()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p1, v8, v9}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getOutputFormat()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getMaxDuration()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->updateMaxRecordingTime(I)V

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getRecordingMode()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->semSetRecordingMode(I)V

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v8

    const/16 v9, 0x1e

    if-le v8, v9, :cond_a

    const/16 v8, 0x1e

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    :goto_5
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoHeight()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoEncoder()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioEncodingBitrate()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioChannels()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioSamplingRate()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAudioRecording()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getAudioEncoder()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_7
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->notifyRecordingInfo(Z)V

    goto/16 :goto_1

    :catch_0
    move-exception v3

    const-string v8, "RecordingController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file not found:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v9

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->createVideoFile(IZ)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v8

    const/16 v9, 0x64

    if-ne v8, v9, :cond_9

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v9

    const-string v10, "video/3gpp"

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->createNewVideoPath(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    :goto_6
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mInfoTitle:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/sec/android/app/camera/interfaces/Engine;->setLastContentTitle(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v9

    const-string v10, "video/mp4"

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->createNewVideoPath(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    goto :goto_6

    :catch_1
    move-exception v2

    const-string v8, "RecordingController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setMaxFileSize failed (maxFileSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_a
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x1e

    sget v9, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_RECORDING_VIDEO_FPS_NORMAL_FRONT:I

    if-eq v8, v9, :cond_b

    sget v8, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_RECORDING_VIDEO_FPS_NORMAL_FRONT:I

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_5

    :cond_b
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMediaRecorderProfile:Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_5
.end method

.method public onRecordingCancelled()V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, "RecordingController"

    const-string v1, "onRecordingCancelled"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->clearFileResources()V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingEvent(I)V

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->notifyRecordingInfo(Z)V

    return-void
.end method

.method public onRecordingFailed(IZ)V
    .locals 3

    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->handleRecordingError(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onRecordingPaused()V
    .locals 2

    const-string v0, "RecordingController"

    const-string v1, "onRecordingPaused"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingEvent(I)V

    return-void
.end method

.method public onRecordingRestarted()V
    .locals 4

    const/4 v2, 0x1

    const-string v0, "RecordingController"

    const-string v1, "onRecordingRestarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->removeMessages(I)V

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    return-void
.end method

.method public onRecordingResumed()V
    .locals 2

    const-string v0, "RecordingController"

    const-string v1, "onRecordingResumed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingEvent(I)V

    return-void
.end method

.method public onRecordingStarted()V
    .locals 2

    const-string v0, "RecordingController"

    const-string v1, "onRecordingStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingEvent(I)V

    return-void
.end method

.method public onRecordingStopAndRestarting()V
    .locals 2

    const-string v0, "RecordingController"

    const-string v1, "onRecordingRestarting"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->registerVideo()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->updateThumbnail()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setMaxVideoFileSize()V

    return-void
.end method

.method public onRecordingStopped()V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, "RecordingController"

    const-string v1, "onRecordingStopped"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->registerVideo()V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onRecordingEvent(I)V

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->notifyRecordingInfo(Z)V

    return-void
.end method

.method public onSecImagingRecorderPrepared()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/util/RecordingUtil;->createVideoFile(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    const-string v2, "video/mp4"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->createNewVideoPath(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mVideoFilenameWithPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTempVideoFilename:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setOutputFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setMaxVideoFileSize(J)V

    return-void
.end method

.method public onStopRecordingProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onStopProgress(I)V

    return-void
.end method

.method protected register(Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;)V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "RecordingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.LOW_BATTERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.OVERHEAT_TEMPERATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.COOLDOWN_TEMPERATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.PREVIEW_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_VIDEO_CAPABILITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_WIFI_DISPLAY_NOT_ALLOWED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setRecordingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;)V

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v1

    if-ne v1, v4, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    return-void
.end method

.method protected registerSecImagingRecorderListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSecImagingEventListener(Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;)V

    return-void
.end method

.method protected setCustomEffectRecording(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsCustomEffectRecording:Z

    return-void
.end method

.method public setMaxVideoFileSize()V
    .locals 6

    const-wide v4, 0xffffffffL

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestedRecordingSize by intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxVideoFileSize:J

    :cond_1
    return-void
.end method

.method protected setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V
    .locals 3

    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingState : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    return-void
.end method

.method protected setTickInterval(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    return-void
.end method

.method protected startRecordingPreviewVI()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCamcorderPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isPreviewAngleChangeAnimationNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPreviewAnimation(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetOneShotPreviewCallback()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPreviewAnimation(I)V

    goto :goto_1
.end method

.method protected unregister()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setRecordingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsCustomEffectRecording:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInMS:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->access$1000(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->access$1100(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    :cond_2
    return-void
.end method

.method protected unregisterSecImagingRecorderListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSecImagingEventListener(Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;)V

    return-void
.end method
