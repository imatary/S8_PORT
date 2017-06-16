.class public Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$OnCameraSettingChangedListener;
.implements Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraOrientationEventManager$CameraOrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;,
        Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;,
        Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BEAUTY_MODE:I = 0x7

.field private static final DEFAULT_SELFIE_LEVEL:I = 0x2

.field private static final DELAY_TIME_TO_RESET_TOUCH_FOCUS:I = 0xbb8

.field private static final OPEN_RETRY_NUMBER:I = 0x5

.field private static final PREVIEW_SURFACE_CHANGED:I = 0x2

.field private static final PREVIEW_SURFACE_CREATED:I = 0x1

.field private static final PREVIEW_SURFACE_DESTROYED:I

.field private static final RECORD_AUTHOR_PARAM:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCamera:Lcom/samsung/android/camera/core/SemCamera;

.field private mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

.field private mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

.field private final mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

.field private mCameraState:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

.field private final mCameraStateLock:Ljava/lang/Object;

.field private mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCroppedHeight:I

.field private mCroppedWidth:I

.field private mCurrentVideoFileName:Ljava/lang/String;

.field private mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;

.field private final mErrorCallback:Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;

.field private mImageFileContentValues:Landroid/content/ContentValues;

.field private mIsCameraLocked:Z

.field private mIsConstantGrowthRateZoomSupported:Z

.field private mIsEngineStarted:Z

.field private mIsFlashAutoEnabled:Z

.field private mIsZoomStarted:Z

.field private final mJpegCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

.field private mJpegOrientationOnTake:I

.field private mLastOrientation:I

.field private mMaxSizeReachedToast:Landroid/widget/Toast;

.field private mMaxZoomLevel:I

.field private mMaxZoomRatio:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mNeedHideBlackRectVI:Z

.field private mOnError:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPrepareRecordingThread:Ljava/lang/Thread;

.field private mPreviewSize:Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

.field private mPreviewSurfaceState:I

.field private mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

.field private mRecordingTimeMilliSecond:J

.field private mRetry:I

.field private mStartPreviewThread:Ljava/lang/Thread;

.field private mStartRecordingThread:Ljava/lang/Thread;

.field private mTempVideoFileName:Ljava/lang/String;

.field private mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

.field private final mTextureViewLock:Ljava/lang/Object;

.field private mUIHandler:Landroid/os/Handler;

.field private mVideoFileContentValues:Landroid/content/ContentValues;

.field private mVideoFileSizeInByte:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->$assertionsDisabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.53/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureViewLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraStateLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsFlashAutoEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsCameraLocked:Z

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRetry:I

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSurfaceState:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsZoomStarted:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mNeedHideBlackRectVI:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mLastOrientation:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsConstantGrowthRateZoomSupported:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsEngineStarted:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mOnError:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMaxSizeReachedToast:Landroid/widget/Toast;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$2;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mJpegCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraState:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mErrorCallback:Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;

    invoke-static {p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    iput-object p3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mUIHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mOnError:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureViewLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSize:Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->initializeRecord()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSurfaceState:I

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Landroid/media/MediaRecorder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsCameraLocked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/camera/core/SemCamera;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->cleanupRecordingFile()V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mNeedHideBlackRectVI:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mNeedHideBlackRectVI:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/camera/core/SemCamera$Parameters;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/camera/core/SemCamera$CameraInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedHeight:I

    return p1
.end method

.method static synthetic access$702(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;[BLandroid/util/Pair;)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->cropJpegData([BLandroid/util/Pair;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;[B)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->saveAndRegisterImage([B)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private calculateOrientationForPicture(I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    iget v2, v2, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->facing:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    iget v1, v1, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->orientation:I

    sub-int/2addr v1, p1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v0, v1, 0x168

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    iget v1, v1, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->orientation:I

    add-int/2addr v1, p1

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method private cleanupRecordingFile()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCurrentVideoFileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCurrentVideoFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v2, "Intermediate video file deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCurrentVideoFileName:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTempVideoFileName:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTempVideoFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v2, "Intermediate video file deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTempVideoFileName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private createImageFileName()Ljava/lang/String;
    .locals 13

    const/4 v12, -0x1

    sget-object v9, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->createSavingDirectory()V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v9, "yyyyMMdd_kkmmss"

    invoke-static {v9, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->getImageSavingDir()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v10, "Duplicated Image file name."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "yyyyMMdd_kkmmss"

    invoke-static {v10, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->getImageSavingDir()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "title"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "_display_name"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "mime_type"

    const-string v10, "image/jpeg"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "_data"

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v9, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedWidth:I

    if-eq v9, v12, :cond_1

    iget v9, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedHeight:I

    if-ne v9, v12, :cond_2

    :cond_1
    const-string v9, "width"

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->width()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "height"

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->height()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    const-string v9, "orientation"

    iget v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mJpegOrientationOnTake:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "langagecode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mImageFileContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_2
    const-string v9, "width"

    iget v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "height"

    iget v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private createSavingDirectory()V
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->getImageSavingDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v2, "Fail to Create Directory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private createVideoFileName(I)V
    .locals 14

    sget-object v11, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    const/4 v13, 0x2

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->createSavingDirectory()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->getImageSavingDir()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "temp_video"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTempVideoFileName:Ljava/lang/String;

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    packed-switch p1, :pswitch_data_0

    const-string v1, ".mp4"

    const-string v8, "video/mp4"

    :goto_0
    const-string v11, "yyyyMMdd_kkmmss"

    invoke-static {v11, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->getImageSavingDir()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    sget-object v11, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v12, "Duplicated Video file name."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "yyyyMMdd_kkmmss"

    invoke-static {v12, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->getImageSavingDir()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v5, v6

    goto :goto_1

    :pswitch_0
    const-string v1, ".3gp"

    const-string v8, "video/3gpp"

    goto/16 :goto_0

    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "title"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "_display_name"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "mime_type"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "_data"

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "langagecode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCurrentVideoFileName:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private cropJpegData([BLandroid/util/Pair;)[B
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)[B"
        }
    .end annotation

    sget-object v23, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v25

    const/16 v26, 0x2

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Start ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v23

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->width()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->height()I

    move-result v13

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedWidth:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedHeight:I

    new-instance v14, Landroid/graphics/RectF;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v13

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Matrix;->reset()V

    new-instance v6, Landroid/graphics/RectF;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v13

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureViewLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraOrientation()I

    move-result v23

    const/16 v25, 0x5a

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraOrientation()I

    move-result v23

    const/16 v25, 0x10e

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v25

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getCropOffsetRatio()Landroid/util/Pair;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v23, v23, v25

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->facing:I

    move/from16 v23, v0

    if-nez v23, :cond_1

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->posX:I

    move/from16 v25, v0

    add-int v22, v23, v25

    :cond_1
    :goto_0
    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v14, v6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    sget-object v23, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "cropSize: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " imageSize: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v18

    const/4 v7, 0x0

    if-eqz v18, :cond_2

    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v23

    if-nez v23, :cond_3

    sget-object v23, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getJpegQuality()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedWidth:I

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedHeight:I

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v23

    move/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v15, 0x0

    :try_start_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/imaging/Imaging;->getMetadata([B)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    check-cast v17, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;

    move-object/from16 v15, v17

    :goto_1
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->getExif()Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;
    :try_end_1
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/commons/imaging/ImageWriteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v23

    if-nez v23, :cond_7

    :cond_4
    move-object v9, v8

    :goto_2
    sget-object v23, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v25

    const/16 v26, 0x2

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", End ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    :goto_3
    return-object v23

    :cond_5
    :try_start_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v25

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getCropOffsetRatio()Landroid/util/Pair;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v23, v23, v25

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->facing:I

    move/from16 v23, v0

    if-nez v23, :cond_1

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    goto/16 :goto_0

    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v23

    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_7
    :try_start_3
    invoke-virtual {v15}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->getExif()Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    move-result-object v20

    new-instance v19, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getDirectories()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_8
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    sget-object v24, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    iget v0, v10, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->getExifDirectoryType(I)Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_8

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V
    :try_end_3
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/commons/imaging/ImageWriteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_0
    move-exception v11

    :goto_5
    sget-object v23, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v24, "Fail to copy exif."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    goto/16 :goto_3

    :cond_9
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v23

    if-eqz v23, :cond_a

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v23

    sget-object v24, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v23

    sget-object v24, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [S

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    aput-short v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    sget-object v23, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v23

    sget-object v24, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [S

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCroppedHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    aput-short v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    :cond_a
    new-instance v23, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;

    invoke-direct/range {v23 .. v23}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;-><init>()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v9, v2}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossless([BLjava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/commons/imaging/ImageWriteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :catch_1
    move-exception v11

    goto/16 :goto_5

    :catch_2
    move-exception v12

    sget-object v24, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Fail to copy exif len="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-nez p1, :cond_b

    const-string v23, "null"

    :goto_6
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    goto :goto_6

    :catch_3
    move-exception v11

    goto/16 :goto_5
.end method

.method private findBestFpsRange(Ljava/util/List;II)[I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;II)[I"
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v11

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Request fps range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Will be selected from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v3, v11, [I

    new-array v2, v11, [I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_0
    if-ltz v4, :cond_7

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v6, v6, v9

    aput v6, v3, v9

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v6, v6, v10

    aput v6, v3, v10

    aget v6, v3, v10

    if-ne p3, v6, :cond_5

    aget v6, v3, v9

    if-ne p2, v6, :cond_0

    move-object v2, v3

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find best fps range : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v3

    :cond_0
    if-nez v4, :cond_1

    move-object v2, v3

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find best fps range : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_2
    if-ltz v5, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v6, v6, v9

    aput v6, v3, v9

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v6, v6, v10

    aput v6, v3, v10

    aget v6, v3, v9

    if-ne p2, v6, :cond_2

    move-object v2, v3

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find best fps range : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    aget v6, v3, v9

    if-le p2, v6, :cond_3

    move-object v2, v3

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find best fps range : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_4
    move-object v2, v3

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find best fps range : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    aget v6, v3, v10

    if-le p3, v6, :cond_6

    move-object v2, v3

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find best fps range : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    :cond_7
    move-object v2, v3

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find best fps range : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getConstantGrowthRateZoomSupported(Lcom/samsung/android/camera/core/SemCamera$Parameters;)Z
    .locals 2

    const-string v0, "true"

    const-string v1, "constant-growth-rate-zoom-supported"

    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private initializeRecord()V
    .locals 4

    const/4 v3, 0x2

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsCameraLocked:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core/SemCamera;->unlock()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->semSetCamera(Lcom/samsung/android/camera/core/SemCamera;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->semSetAuthor(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setRecordingProfile()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mLastOrientation:I

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v2, "MediaRecorder.prepare()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v2, "Fail to initialize media recorder."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->START_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->removeRequest(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_CANCEL:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->handleRecordingCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onErrorOccurred(I)V

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->releaseMediaRecorder()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->cleanupRecordingFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private needToResizeForAspectRatio(D)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureViewLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Current: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getAspectRatio()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getAspectRatio()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getAspectRatio()D

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private registerVideo()Landroid/net/Uri;
    .locals 14

    sget-object v10, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    const-string v11, "_size"

    new-instance v12, Ljava/io/File;

    iget-object v13, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCurrentVideoFileName:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    const-string v11, "resolution"

    iget-object v12, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "H.263"

    const-string v3, "H.264"

    const-string v1, "AMR"

    const-string v0, "AAC"

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoEncoder()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->getProfile(Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    move-result-object v6

    iget v10, v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoEncoder:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    const-string v11, "video_codec_info"

    const-string v12, "H.263"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getAudioEncoder()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->getProfile(Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    move-result-object v6

    iget v10, v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioEncoder:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    const-string v11, "audio_codec_info"

    const-string v12, "AAC"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    :try_start_0
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCurrentVideoFileName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    const-string v11, "duration"

    const/16 v12, 0x9

    invoke-virtual {v7, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v4, 0x0

    :try_start_1
    const-string v10, "content://media/external/video/media"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v4

    :goto_3
    return-object v4

    :cond_2
    iget v10, v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoEncoder:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    const-string v11, "video_codec_info"

    const-string v12, "H.264"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoEncoder()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    const-string v11, "video_codec_info"

    const-string v12, "H.263"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoEncoder()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    const-string v11, "video_codec_info"

    const-string v12, "H.264"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v10, v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioEncoder:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    const-string v11, "audio_codec_info"

    const-string v12, "AMR"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getAudioEncoder()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    const-string v11, "audio_codec_info"

    const-string v12, "AAC"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getAudioEncoder()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    const-string v11, "audio_codec_info"

    const-string v12, "AMR"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v5

    sget-object v10, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v11, "setDataSource failed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileContentValues:Landroid/content/ContentValues;

    const-string v11, "duration"

    iget-wide v12, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRecordingTimeMilliSecond:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    :catch_1
    move-exception v8

    sget-object v10, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v11, "Not enough space in database"

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_2
    move-exception v5

    sget-object v10, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v11, "insert failed"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_3
    move-exception v5

    sget-object v10, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v11, "insert failed"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_4
    move-exception v5

    sget-object v10, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v11, "insert failed"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_5
    move-exception v5

    sget-object v10, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v11, "ContentResolver insert failed"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method private releaseMediaRecorder()V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    iput-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core/SemCamera;->reconnect()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsCameraLocked:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v2, "Camera reconnect fail."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private renameTempFile()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTempVideoFileName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCurrentVideoFileName:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTempVideoFileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCurrentVideoFileName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v4, "Failed to rename temp file."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private saveAndRegisterImage([B)Landroid/net/Uri;
    .locals 10

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->createImageFileName()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_3
    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mImageFileContentValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v8

    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v7, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v8, "File not found."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto :goto_1

    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_2
    move-exception v1

    sget-object v7, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v8, "IO Exception."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto :goto_1

    :catch_3
    move-exception v8

    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_2

    if-eqz v8, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_3
    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v1

    sget-object v7, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v8, "IllegalStateException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto :goto_1

    :catch_5
    move-exception v9

    :try_start_9
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_6
    move-exception v5

    sget-object v7, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v8, "Not enough space in database"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto :goto_1

    :catch_7
    move-exception v1

    sget-object v7, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v8, "ContentResolver insert failed"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v7

    move-object v8, v6

    goto :goto_2
.end method

.method private setMaxZoom()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMaxZoomLevel:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMaxZoomLevel:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMaxZoomRatio:I

    :cond_0
    return-void
.end method

.method private setRecordingProfile()V
    .locals 8

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0x32

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->semSetDurationInterval(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    move v2, v4

    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoMaxDuration()I

    move-result v3

    if-ne v3, v4, :cond_1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getMaxVideoFileSize()J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->getProfile(Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoOutputFormat()I

    move-result v1

    if-ne v1, v4, :cond_3

    iget v1, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->outputFormat:I

    :goto_4
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoEncoder()I

    move-result v1

    if-ne v1, v4, :cond_4

    iget v1, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoEncoder:I

    :goto_5
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoWidth:I

    iget v3, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoBitrate()I

    move-result v1

    if-ne v1, v4, :cond_5

    iget v1, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoBitrate:I

    :goto_6
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoFrameRate()I

    move-result v1

    if-ne v1, v4, :cond_6

    iget v1, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoFps:I

    :goto_7
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getAudioEncoder()I

    move-result v1

    if-ne v1, v4, :cond_7

    iget v1, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioEncoder:I

    :goto_8
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getAudioChannels()I

    move-result v1

    if-ne v1, v4, :cond_8

    iget v1, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioChannel:I

    :goto_9
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getAudioSamplingRate()I

    move-result v1

    if-ne v1, v4, :cond_9

    iget v1, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioSamplingRate:I

    :goto_a
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getAudioBitrate()I

    move-result v1

    if-ne v1, v4, :cond_a

    iget v1, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioBitrate:I

    :goto_b
    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoOutputFormat()I

    move-result v1

    if-ne v1, v4, :cond_b

    iget v1, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->outputFormat:I

    :goto_c
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->createVideoFileName(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTempVideoFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    return-void

    :sswitch_0
    const-string v2, "1920x1080"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "1440x1080"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "1280x720"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "720x480"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "640x480"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "320x240"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "176x144"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v6, 0xaf000

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v6, 0x96000

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v6, 0x7d000

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v6, 0x1e000

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v6, 0x19000

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/16 v6, 0x7800

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/16 v6, 0x1800

    invoke-virtual {v2, v6, v7}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoMaxDuration()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    goto/16 :goto_2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getMaxVideoFileSize()J

    move-result-wide v2

    goto/16 :goto_3

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoOutputFormat()I

    move-result v1

    goto/16 :goto_4

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoEncoder()I

    move-result v1

    goto/16 :goto_5

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoBitrate()I

    move-result v1

    goto/16 :goto_6

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoFrameRate()I

    move-result v1

    goto/16 :goto_7

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getAudioEncoder()I

    move-result v1

    goto/16 :goto_8

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getAudioChannels()I

    move-result v1

    goto/16 :goto_9

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getAudioSamplingRate()I

    move-result v1

    goto/16 :goto_a

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getAudioBitrate()I

    move-result v1

    goto/16 :goto_b

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoOutputFormat()I

    move-result v1

    goto/16 :goto_c

    :sswitch_data_0
    .sparse-switch
        -0x7ee3de37 -> :sswitch_6
        -0x7bd7c11a -> :sswitch_4
        -0x6dcaf6b0 -> :sswitch_1
        -0x6683aa6a -> :sswitch_2
        -0x4a5b3717 -> :sswitch_3
        -0x1df42c19 -> :sswitch_5
        0x2fce7329 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private startBackgroundThread()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CommandThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mBackgroundThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mBackgroundThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkFlashModeSupported(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    return v0

    :sswitch_0
    const-string v2, "auto"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "off"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const-string v2, "auto"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const-string v2, "off"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const-string v2, "on"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x2dddaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public checkRequestSize()Z
    .locals 8

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getMaxVideoFileSize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->getProfile(Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getMaxVideoFileSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoBitrate()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    iget v1, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoBitrate:I

    :goto_0
    sget-object v4, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Ref. size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int/lit8 v6, v1, 0x2

    div-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v4, v1

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x8

    div-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoBitrate()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public doAutoFocusAsync()V
    .locals 3

    const-string v0, "auto"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isFocusAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCameraErrorHappened()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "camera_focus_key"

    const-string v1, "auto"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doChangeParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mAutoFocusCallback:Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->autoFocus(Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method doCancelVideoRecording()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->keepDeviceOn(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->releaseMediaRecorder()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->enableAlertSound(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->cleanupRecordingFile()V

    return-void
.end method

.method doChangeParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown key("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")/value("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :sswitch_0
    const-string v4, "camera_flash_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v4, "camera_focus_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v5, "camera_resolution_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v1, p2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    const-string v1, "auto"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v1, v3}, Lcom/samsung/android/camera/core/SemCamera;->setFlashAutoCallbackEnabled(Z)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core/SemCamera;->setFlashAutoCallbackEnabled(Z)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->setFocus(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v1, p2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v1, "x"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPictureSize(II)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x744c935a -> :sswitch_2
        -0x38abe70a -> :sswitch_0
        0x6cc8c9de -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method doCloseCamera()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v0, v3}, Lcom/samsung/android/camera/core/SemCamera;->setErrorCallback(Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v0, v3}, Lcom/samsung/android/camera/core/SemCamera;->setExtraInfoListener(Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera;->release()V

    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    :cond_0
    iput-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V

    return-void
.end method

.method public doExpandToRecorderSize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->requestExpandAndWait()V

    return-void
.end method

.method doInitializeParameter()V
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v2, "Return. Camera parameter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->width()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPictureSize(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isPhaseAFSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const-string v2, "phase-af"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isSharpCorrectionSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const-string v2, "rear-lens-distortion-correction"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getFocus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getFlash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->isCurrentFlashMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core/SemCamera;->setFlashAutoCallbackEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getConstantGrowthRateZoomSupported(Lcom/samsung/android/camera/core/SemCamera$Parameters;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsConstantGrowthRateZoomSupported:Z

    iget-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsConstantGrowthRateZoomSupported:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setMaxZoom()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const-string v2, "phase-af"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method doLockOrientationChange(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

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

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->lockOrientationChange(Z)V

    return-void
.end method

.method public doNotifyRecordingFinished()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->notifyRecordingFinished()V

    return-void
.end method

.method doOpenCamera()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/camera/core/SemCamera;->open(I)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/core/SemCamera;->setShutterSoundMode(I)V

    new-instance v2, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    invoke-direct {v2}, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core/SemCamera;->getCameraInfo(ILcom/samsung/android/camera/core/SemCamera$CameraInfo;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    iget v2, v2, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->facing:I

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->isFrontBeautyRequested()Z
    :try_end_0
    .catch Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/core/SemCamera;->setShootingMode(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera;->setBeautyLevel(ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core/SemCamera;->getParameters()Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v3, "Parameter is null. Camera is opened, but released by evict."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Parameter is null."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v0

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRetry:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRetry:I

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraMaxUsersRuntimeException occurred. Retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRetry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRetry:I

    if-ge v2, v7, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsEngineStarted:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v3, "quit retry right now by pausing cross app"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRetry:I

    :goto_1
    return-void

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mErrorCallback:Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/core/SemCamera;->setErrorCallback(Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/core/SemCamera;->setExtraInfoListener(Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isEngineStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->INITIALIZED:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onCameraOpened()V
    :try_end_3
    .catch Lcom/samsung/android/camera/core/SemCamera$CameraMaxUsersRuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    iput v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRetry:I

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x64

    :try_start_4
    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRetry:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doOpenCamera()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_4
    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRetry:I

    if-lt v2, v7, :cond_2

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v3, "Retry to open camera failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_UNABLE_TO_USE:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->showErrorMessage(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onErrorOccurred(I)V

    goto :goto_2

    :catch_2
    move-exception v0

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v3, "Open camera failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_UNABLE_TO_USE:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->showErrorMessage(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onErrorOccurred(I)V

    goto :goto_2

    :catch_3
    move-exception v2

    goto/16 :goto_0
.end method

.method doPauseVideoRecording()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->keepDeviceOn(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->isCurrentFlashMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "camera_flash_key"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doChangeParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->enableAlertSound(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera;->pauseRecording()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    return-void
.end method

.method doPrepareRecordingAsync()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->isMicrophonePlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v1, "Headset with microphone is plugged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__recording_using_earphone_mic:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v1, "MediaRecording is already initialized. Release it first."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->releaseMediaRecorder()V

    :cond_2
    iput-wide v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileSizeInByte:J

    iput-wide v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRecordingTimeMilliSecond:J

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$6;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void
.end method

.method doResumeVideoRecording()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->keepDeviceOn(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->isCurrentFlashMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedFlash()Ljava/util/List;

    move-result-object v0

    const-string v1, "torch"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "camera_flash_key"

    const-string v1, "torch"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doChangeParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->disableAlertSound(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->requestAudioFocus()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera;->resumeRecording()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsFlashAutoEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->isCurrentFlashMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedFlash()Ljava/util/List;

    move-result-object v0

    const-string v1, "torch"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "camera_flash_key"

    const-string v1, "torch"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doChangeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method doStartPreviewAsync(Z)V
    .locals 12

    const/4 v11, 0x1

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": for_record="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureViewLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v8, "return. TextureView is not yet available."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    monitor-exit v7

    :goto_0
    return-void

    :cond_0
    iget v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSurfaceState:I

    if-nez v6, :cond_1

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v8, "return. TextureView is destroyed."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    if-nez v6, :cond_2

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v8, "return. Camera is null."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    monitor-exit v7

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    if-nez v6, :cond_3

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v8, "return. Camera parameter is null."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    monitor-exit v7

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->buildListFromCameraSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    if-eqz p1, :cond_7

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v6

    :goto_1
    invoke-static {v8, v9, v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->getOptimalPreviewSize(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSize:Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    sget-object v8, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Picture/Video Size: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_8

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v6

    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " Preview Size: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSize:Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->width()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "x"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSize:Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->height()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    iget-object v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSize:Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->width()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSize:Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->height()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewSize(II)V

    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->getProfile(Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const-string v8, "video-size"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v11, :cond_5

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSize:Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->width()I

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSize:Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->height()I

    move-result v8

    invoke-virtual {p0, v5, v6, v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->findThumbnailSize(Ljava/util/List;II)Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v4

    if-eqz v4, :cond_5

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Thumbnail size  width x height: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    iget v8, v4, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    iget v9, v4, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setJpegThumbnailSize(II)V

    :cond_5
    const/4 v2, 0x0

    if-eqz p1, :cond_a

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->getProfile(Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoFrameRate()I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_9

    iget v1, v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoFps:I

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedPreviewFpsRanges()Ljava/util/List;

    move-result-object v6

    mul-int/lit16 v8, v1, 0x3e8

    mul-int/lit16 v9, v1, 0x3e8

    invoke-direct {p0, v6, v8, v9}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->findBestFpsRange(Ljava/util/List;II)[I

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_6

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting fps range to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const/4 v8, 0x0

    aget v8, v2, v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->updateTextureViewSize()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->updateTextureViewOrientation()V

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/camera/core/SemCamera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {p0, v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v6, Ljava/lang/Thread;

    new-instance v8, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7;

    invoke-direct {v8, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V

    invoke-direct {v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEW_STARTING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V

    monitor-exit v7

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v6

    goto/16 :goto_1

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v6

    goto/16 :goto_2

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoFrameRate()I

    move-result v1

    goto/16 :goto_3

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedPreviewFpsRanges()Ljava/util/List;

    move-result-object v6

    const/16 v8, 0x3a98

    const/16 v9, 0x7530

    invoke-direct {p0, v6, v8, v9}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->findBestFpsRange(Ljava/util/List;II)[I

    move-result-object v2

    goto/16 :goto_4

    :catch_0
    move-exception v0

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v8, "start preview fail."

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onErrorOccurred(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->completeCommand()V

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method doStartVideoRecordingAsync()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->keepDeviceOn(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMaxSizeReachedToast:Landroid/widget/Toast;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$8;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mStartRecordingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method doStopPreview()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->RESET_AUTO_FOCUS_COMPLETE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;->hasMessages(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->RESET_AUTO_FOCUS_COMPLETE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;->removeMessages(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera;->stopPreview()V

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->INITIALIZED:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V

    return-void
.end method

.method doStopVideoRecording()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->keepDeviceOn(Z)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->playCameraSound(II)V

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v3, "PLAY RECORDING SOUND STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->renameTempFile()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->releaseMediaRecorder()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->registerVideo()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onVideoStoringComplete(Landroid/net/Uri;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->enableAlertSound(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->abandonAudioFocus()V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/core/SemCamera;->setShutterSoundMode(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onErrorOccurred(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v3, "Fail to stop video recorder."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onErrorOccurred(I)V

    goto :goto_1
.end method

.method doSwitchCamera()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->setNextCamera()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onSwitchButtonClicked()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$9;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method doSwitchCamera(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->setCameraFacing(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onSwitchButtonClicked()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$10;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method doSwitchPreviewAspectForRecording(Z)V
    .locals 9

    const/4 v8, 0x1

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->buildListFromCameraSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getVideoResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v3

    :goto_0
    invoke-static {v4, v5, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->getOptimalPreviewSize(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->width()I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->height()I

    move-result v3

    int-to-double v6, v3

    div-double v0, v4, v6

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->needToResizeForAspectRatio(D)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v4, "Start VI..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v3, v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->showBlackOverlayWithAnimation(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->waitForAspectVI()V

    iput-boolean v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mNeedHideBlackRectVI:Z

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v3

    goto :goto_0
.end method

.method doSwitchPreviewAspectForSwitchingCamera()V
    .locals 9

    const/4 v8, 0x1

    sget-object v4, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getNextCameraFacing()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedCameraResolution(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getNextCameraFacing()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraResolutionForFacing(I)Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->getOptimalPreviewSize(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->width()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->height()I

    move-result v6

    int-to-double v6, v6

    div-double v0, v4, v6

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->needToResizeForAspectRatio(D)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v5, "Start VI..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v4, v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->showBlackOverlayWithAnimation(Z)V

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->waitForAspectVI()V

    iput-boolean v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mNeedHideBlackRectVI:Z

    :cond_0
    return-void
.end method

.method doTakePictureAsync()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v1, "Take picture only can be performed under preview state."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onShutterButtonClicked()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getForcedShutterSound()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/core/SemCamera;->setShutterSoundMode(I)V

    :goto_1
    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mLastOrientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mJpegOrientationOnTake:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mJpegOrientationOnTake:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setRotation(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v0, v3}, Lcom/samsung/android/camera/core/SemCamera;->autoFocus(Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$11;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mJpegCallback:Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/camera/core/SemCamera;->takePicture(Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;Lcom/samsung/android/camera/core/SemCamera$PictureCallback;Lcom/samsung/android/camera/core/SemCamera$PictureCallback;)V

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->CAPTURING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getCurrentCallState()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->setShutterSoundMode(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/core/SemCamera;->setShutterSoundMode(I)V

    goto :goto_1
.end method

.method public findThumbnailSize(Ljava/util/List;II)Lcom/samsung/android/camera/core/SemCamera$Size;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/core/SemCamera$Size;",
            ">;II)",
            "Lcom/samsung/android/camera/core/SemCamera$Size;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_0
    const/4 v9, 0x0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    const v3, 0x186a0

    const/4 v2, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/camera/core/SemCamera$Size;

    iget v12, v8, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    int-to-double v12, v12

    iget v14, v8, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    int-to-double v14, v14

    div-double v6, v12, v14

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v12

    if-nez v12, :cond_1

    move/from16 v0, p2

    int-to-double v12, v0

    move/from16 v0, p3

    int-to-double v14, v0

    div-double/2addr v12, v14

    sub-double v12, v6, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v12, v12, v4

    if-gtz v12, :cond_1

    iget v12, v8, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    sub-int v12, v12, p2

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v3, v10, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v3, v10

    goto :goto_1

    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/camera/core/SemCamera$Size;

    goto :goto_0
.end method

.method public getCameraOrientation()I
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    iget v2, v2, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    iget v2, v2, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->orientation:I

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x168

    rsub-int v2, v0, 0x168

    rem-int/lit16 v0, v2, 0x168

    :goto_1
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    iget v2, v2, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->orientation:I

    sub-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v0, v2, 0x168

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraState:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCommandQueue()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    return-object v0
.end method

.method public getMaxZoomLevel()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsConstantGrowthRateZoomSupported:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMaxZoomLevel:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public getMaxZoomRatio()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsConstantGrowthRateZoomSupported:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMaxZoomRatio:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x190

    goto :goto_0
.end method

.method public getRecordingTimeInMilliSecond()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRecordingTimeMilliSecond:J

    return-wide v0
.end method

.method public getRecordingTimeInSecond()I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRecordingTimeMilliSecond:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getVideoFileLengthInByte()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileSizeInByte:J

    return-wide v0
.end method

.method public isCameraErrorHappened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mOnError:Z

    return v0
.end method

.method public isCapturing()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->CAPTURING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->TAKE_PICTURE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->searchRequest(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConstantGrowthRateZoomSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsConstantGrowthRateZoomSupported:Z

    return v0
.end method

.method public isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEngineStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsEngineStarted:Z

    return v0
.end method

.method public isFocusAvailable(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getSetting()Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedFocus()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPhaseAFSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const-string v1, "phase-af-values"

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const-string v1, "phase-af-values"

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepareRecording()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->PREPARE_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->isFirstRequest(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCommandQueue()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->START_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->isFirstRequest(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewWaiting()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEW_STARTING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->START_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->searchRequest(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewing()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->START_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->searchRequest(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->PREPARE_RECORD:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->searchRequest(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSharpCorrectionSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const-string v1, "rear-lens-distortion-correction"

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomAvailable()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isZoomSupported()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v2, "Wrong state for scale zoom. It should be previewing or recording."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZoomSupported()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCameraOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->roundOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mLastOrientation:I

    goto :goto_0
.end method

.method public onCameraSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isEngineStarted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->CHANGE_PARAMETER:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 v1, 0x1

    aput-object p2, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "camera_flash_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x38abe70a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v1, "Max file size reached."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onMaxVideoSizeReached()V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v1, "Max duration limit reached."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onMaxDurationLimitReached()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMaxSizeReachedToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__video_reach_size_limit:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMaxSizeReachedToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMaxSizeReachedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_2
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mVideoFileSizeInByte:J

    goto :goto_0

    :sswitch_3
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRecordingTimeMilliSecond:J

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mRecordingTimeMilliSecond:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->showRecordingTime()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_1
        0x321 -> :sswitch_0
        0x384 -> :sswitch_2
        0x385 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

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

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsEngineStarted:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->unregisterOnCameraSettingChangedListener(Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$OnCameraSettingChangedListener;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraOrientationEventManager;->unregisterListener(Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraOrientationEventManager$CameraOrientationEventListener;)V

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraOrientationEventManager;->disable()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iput-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mMaxSizeReachedToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->waitForQueueEmpty(J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->stopHandler()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->clearRequests()V

    iput-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->stopBackgroundThread()V

    return-void
.end method

.method public onResume()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->registerOnCameraSettingChangedListener(Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$OnCameraSettingChangedListener;)V

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->startBackgroundThread()V

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->startHandler()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->clearRequests()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsEngineStarted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mOnError:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->getOrientationFromDisplayRotation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mLastOrientation:I

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraOrientationEventManager;->enable()V

    invoke-static {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraOrientationEventManager;->registerListener(Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraOrientationEventManager$CameraOrientationEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$4;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$4;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSurfaceState:I

    sget-boolean v0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mNeedToStartPreview:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->INITIALIZED:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->START_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->searchRequest(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->START_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSurfaceState:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->waitForStartPreviewThreadComplete()V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsEngineStarted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v1, "Stop preview before destroying surface texture..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->STOP_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->INITIALIZED:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->waitForCameraState(Ljava/util/EnumSet;J)Z

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v1, "Wait done..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    const/4 v3, 0x2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

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

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSurfaceState:I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public removeCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->removeRequest(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;)V

    return-void
.end method

.method public varargs scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;Ljava/lang/Runnable;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->addCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand;)V

    return-void
.end method

.method public varargs scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;Ljava/lang/Runnable;[Ljava/lang/Object;)V

    return-void
.end method

.method protected setCamcorderPreviewParameterSync()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setRecordingHint(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->isCurrentFlashMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedFlash()Ljava/util/List;

    move-result-object v0

    const-string v1, "torch"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "camera_flash_key"

    const-string v1, "torch"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doChangeParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsFlashAutoEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->isCurrentFlashMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedFlash()Ljava/util/List;

    move-result-object v0

    const-string v1, "torch"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "camera_flash_key"

    const-string v1, "torch"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doChangeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCameraPreviewParameterSync()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setRecordingHint(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->isCurrentFlashMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "camera_flash_key"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doChangeParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->isCurrentFlashMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "camera_flash_key"

    const-string v1, "auto"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doChangeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraState:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change camera state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraState:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraState:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashAutoEnabled(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

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

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsFlashAutoEnabled:Z

    return-void
.end method

.method protected setParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsEngineStarted:Z

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v1, "camera is closed, so return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsCameraLocked:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v1, "camera device is unlocked, so return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core/SemCamera;->setParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V

    goto :goto_0
.end method

.method public setTextureView(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureViewLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTouchFocusPosition(II)V
    .locals 11

    sget-object v7, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", x : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", y : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraOrientation()I

    move-result v7

    const/16 v8, 0xb4

    if-eq v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraOrientation()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewWidth()F

    move-result v7

    float-to-int v6, v7

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v7

    float-to-int v2, v7

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/sdk/rclcamera/impl/se/R$dimen;->__cp__af_base_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/sdk/rclcamera/impl/se/R$dimen;->__cp__af_base_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v7, v1, 0x2

    sub-int v7, p1, v7

    const/4 v8, 0x0

    sub-int v9, v6, v1

    invoke-static {v7, v8, v9}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->clamp(III)I

    move-result v3

    div-int/lit8 v7, v0, 0x2

    sub-int v7, p2, v7

    const/4 v8, 0x0

    sub-int v9, v2, v0

    invoke-static {v7, v8, v9}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->clamp(III)I

    move-result v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/samsung/android/camera/core/SemCamera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/camera/core/SemCamera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camera/core/SemCamera$Area;

    iget-object v7, v7, Lcom/samsung/android/camera/core/SemCamera$Area;->rect:Landroid/graphics/Rect;

    int-to-float v8, v3

    int-to-float v9, v6

    div-float/2addr v8, v9

    const/high16 v9, 0x44fa0000    # 2000.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/16 v9, -0x3e8

    const/16 v10, 0x3e8

    invoke-static {v8, v9, v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->clamp(III)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camera/core/SemCamera$Area;

    iget-object v7, v7, Lcom/samsung/android/camera/core/SemCamera$Area;->rect:Landroid/graphics/Rect;

    int-to-float v8, v5

    int-to-float v9, v2

    div-float/2addr v8, v9

    const/high16 v9, 0x44fa0000    # 2000.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/16 v9, -0x3e8

    const/16 v10, 0x3e8

    invoke-static {v8, v9, v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->clamp(III)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camera/core/SemCamera$Area;

    iget-object v7, v7, Lcom/samsung/android/camera/core/SemCamera$Area;->rect:Landroid/graphics/Rect;

    add-int v8, v3, v1

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    const/high16 v9, 0x44fa0000    # 2000.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/16 v9, -0x3e8

    const/16 v10, 0x3e8

    invoke-static {v8, v9, v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->clamp(III)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camera/core/SemCamera$Area;

    iget-object v7, v7, Lcom/samsung/android/camera/core/SemCamera$Area;->rect:Landroid/graphics/Rect;

    add-int v8, v5, v0

    int-to-float v8, v8

    int-to-float v9, v2

    div-float/2addr v8, v9

    const/high16 v9, 0x44fa0000    # 2000.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/16 v9, -0x3e8

    const/16 v10, 0x3e8

    invoke-static {v8, v9, v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->clamp(III)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {v7, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {p0, v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V

    return-void

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v7

    float-to-int v6, v7

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewWidth()F

    move-result v7

    float-to-int v2, v7

    goto/16 :goto_0
.end method

.method public setZoom()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

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

    const-string v2, ", level : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getZoomValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    const-string v1, "zoom"

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getZoomValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraParameter:Lcom/samsung/android/camera/core/SemCamera$Parameters;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V

    :cond_0
    return-void
.end method

.method public startZoom()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsCameraLocked:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v1, "camera device is unlocked, so return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera;->startZoom()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsZoomStarted:Z

    goto :goto_0
.end method

.method public stopZoom()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsCameraLocked:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v1, "camera device is unlocked, so return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsZoomStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core/SemCamera;->stopZoom()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mIsZoomStarted:Z

    goto :goto_0
.end method

.method public updateTextureViewOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core/SemCamera;->setDisplayOrientation(I)V

    :cond_0
    return-void
.end method

.method public updateTextureViewSize()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSize:Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraInfo:Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$5;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$5;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method waitForCameraState(Ljava/util/EnumSet;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;",
            ">;J)Z"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, v2, p2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraState:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {v2, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long p2, v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-gtz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v4, "Timeout waiting."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-exit v3

    :goto_1
    return v2

    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

    const-string v3, "Wait done."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public waitForStartPreviewThreadComplete()V
    .locals 4

    const/4 v3, 0x2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

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

    const-string v2, " - start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

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

    const-string v2, " - end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForStartRecordingThreadComplete()V
    .locals 4

    const/4 v3, 0x2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

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

    const-string v2, " - start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mStartRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;

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

    const-string v2, " - end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
