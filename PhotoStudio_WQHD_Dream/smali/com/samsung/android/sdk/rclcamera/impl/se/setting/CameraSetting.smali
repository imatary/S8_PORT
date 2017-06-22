.class public Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;
.super Ljava/lang/Object;
.source "CameraSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$OnCameraSettingChangedListener;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_CAMERA_ID:Ljava/lang/String; = "bundle_key_camera_id"

.field public static final BUNDLE_KEY_CAMERA_SETTING:Ljava/lang/String; = "bundle_key_camera_setting:"

.field public static final BUNDLE_KEY_MAX_VIDEO_SIZE:Ljava/lang/String; = "bundle_key_max_video_size"

.field public static final DEFAULT_MAX_ZOOM_LEVEL:I = 0x1e

.field public static final DEFAULT_MAX_ZOOM_RATIO:I = 0x190

.field public static final DEFAULT_ZOOM_VALUE:I = 0x0

.field public static final FORCED_SHUTTER_SOUND_OFF:I = 0x0

.field public static final FORCED_SHUTTER_SOUND_ON:I = 0x1

.field public static final KEY_CAMERA_FLASH:Ljava/lang/String; = "camera_flash_key"

.field private static final KEY_CAMERA_FLASH_SUPPORTED:Ljava/lang/String; = "camera_flash_supported_key"

.field public static final KEY_CAMERA_FOCUS:Ljava/lang/String; = "camera_focus_key"

.field private static final KEY_CAMERA_FOCUS_SUPPORTED:Ljava/lang/String; = "camera_focus_supported_key"

.field public static final KEY_CAMERA_RESOLUTION:Ljava/lang/String; = "camera_resolution_key"

.field private static final KEY_CAMERA_RESOLUTION_SUPPORTED:Ljava/lang/String; = "camera_resolution_supported_key"

.field public static final KEY_VIDEO_RESOLUTION:Ljava/lang/String; = "video_resolution_key"

.field private static final KEY_VIDEO_RESOLUTION_SUPPORTED:Ljava/lang/String; = "video_resolution_supported_key"

.field private static final NOTIFY_CAMERA_SETTING_CHANGE:I = 0x3e8

.field public static final NOT_REQUESTED:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field public static final VALUE_FLASH_AUTO:Ljava/lang/String; = "auto"

.field public static final VALUE_FLASH_OFF:Ljava/lang/String; = "off"

.field public static final VALUE_FLASH_ON:Ljava/lang/String; = "on"

.field public static final VALUE_FLASH_TORCH:Ljava/lang/String; = "torch"

.field public static final VALUE_FOCUS_AUTO:Ljava/lang/String; = "auto"

.field public static final VALUE_FOCUS_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final VALUE_FOCUS_CONTINUOUS_VIDEO:Ljava/lang/String; = "continuous-video"

.field public static final VALUE_FOCUS_FIXED:Ljava/lang/String; = "fixed"

.field public static final VALUE_FOCUS_INFINITY:Ljava/lang/String; = "infinity"


# instance fields
.field private mAudioBitrate:I

.field private mAudioChannels:I

.field private mAudioEncoder:I

.field private mAudioSamplingRate:I

.field private mCameraId:I

.field private final mContext:Landroid/content/Context;

.field private mDexwindowState:Z

.field private mFacing:[I

.field private mInitializationFailed:Z

.field private mIsLowBattery:Z

.field private mIsTemperatureHighToUseFlash:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$OnCameraSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCamera:I

.field private mMaxVideoFileSize:J

.field private mMultiwindowState:Z

.field private mNotificationHandler:Landroid/os/Handler;

.field private final mSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVideoBitrate:I

.field private mVideoEncoder:I

.field private mVideoFrameRate:I

.field private mVideoMaxDuration:I

.field private mVideoOutputFormat:I

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.56/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mListeners:Ljava/util/List;

    iput-boolean v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mIsTemperatureHighToUseFlash:Z

    iput-boolean v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mIsLowBattery:Z

    iput v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mZoomValue:I

    iput v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    iput-boolean v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mInitializationFailed:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxVideoFileSize:J

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoOutputFormat:I

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoEncoder:I

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoBitrate:I

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoFrameRate:I

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mAudioEncoder:I

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mAudioBitrate:I

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mAudioChannels:I

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mAudioSamplingRate:I

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoMaxDuration:I

    iput-boolean v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMultiwindowState:Z

    iput-boolean v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mDexwindowState:Z

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mNotificationHandler:Landroid/os/Handler;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/camera/core/SemCamera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxCamera:I

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxCamera:I

    if-le v1, v6, :cond_0

    iput v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxCamera:I

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxCamera:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mFacing:[I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxCamera:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Device does not have camera device."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private acquireCameraSettings(I)V
    .locals 22

    sget-object v17, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "acquireCameraSettings current version: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraParameterCache;->getCachedFlashModes(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraParameterCache;->getCachedFocusModes(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraParameterCache;->getCachedPictureSizes(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraParameterCache;->getCachedVideoSizes(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraParameterCache;->getCachedFacing(Landroid/content/Context;I)I

    move-result v3

    new-instance v5, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;

    invoke-direct {v5}, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;-><init>()V

    move/from16 v0, p1

    invoke-static {v0, v5}, Lcom/samsung/android/camera/core/SemCamera;->getCameraInfo(ILcom/samsung/android/camera/core/SemCamera$CameraInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mFacing:[I

    move-object/from16 v17, v0

    iget v0, v5, Lcom/samsung/android/camera/core/SemCamera$CameraInfo;->facing:I

    move/from16 v18, v0

    aput v18, v17, p1

    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    if-eqz v14, :cond_0

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mFacing:[I

    move-object/from16 v17, v0

    aget v17, v17, p1

    move/from16 v0, v17

    if-eq v0, v3, :cond_2

    :cond_0
    sget-object v17, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    const-string v18, "No cached parameter or out-dated."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->checkCameraDisabledByDMP(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->checkCameraLockedByMDM()Z

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/RestrictionPolicyUtil;->isCameraRestricted(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_1
    sget-object v17, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    const-string v18, "Unable to acquire camera parameter by security policy."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_7

    :goto_1
    invoke-virtual {v10}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v10}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->buildListFromCameraSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v10}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-virtual {v10}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->buildListFromCameraSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    :goto_2
    sget-object v17, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    const-string v18, "Update parameter cache."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1, v12}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraParameterCache;->updateFlashModes(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraParameterCache;->updateFocusModes(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1, v14}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraParameterCache;->updatePictureSizes(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1, v15}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraParameterCache;->updateVideoSizes(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mFacing:[I

    move-object/from16 v18, v0

    aget v18, v18, p1

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CameraParameterCache;->updateFacing(Landroid/content/Context;II)V

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    const-string v18, "camera_flash_supported_key"

    invoke-static {v12}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    const-string v18, "camera_focus_supported_key"

    invoke-static {v13}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    const-string v18, "camera_resolution_supported_key"

    invoke-static {v14}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->getProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_4
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    iget v0, v11, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoWidth:I

    move/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->width()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    iget v0, v11, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoHeight:I

    move/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->height()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_6

    sget-object v17, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    const-string v18, "Unable to acquire camera parameter because VT call is ongoing."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/camera/core/SemCamera;->open(I)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/camera/core/SemCamera;->getParameters()Lcom/samsung/android/camera/core/SemCamera$Parameters;

    move-result-object v10

    invoke-virtual {v4}, Lcom/samsung/android/camera/core/SemCamera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    sget-object v17, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    const-string v18, "Unable to acquire camera parameter."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "off"

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v10}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->buildListFromCameraSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    goto/16 :goto_2

    :cond_9
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "off"

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "fixed"

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v17, 0xc

    move/from16 v0, v17

    new-array v0, v0, [Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0xa00

    const/16 v21, 0x5a0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0xa00

    const/16 v21, 0x438

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x2

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x870

    const/16 v21, 0x870

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x3

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x800

    const/16 v21, 0x600

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x4

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x800

    const/16 v21, 0x480

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x5

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x780

    const/16 v21, 0x438

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x6

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x500

    const/16 v21, 0x3c0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x7

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x500

    const/16 v21, 0x2d0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x8

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x3c0

    const/16 v21, 0x2d0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x9

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x320

    const/16 v21, 0x1e0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0xa

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x2d0

    const/16 v21, 0x2d0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0xb

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x280

    const/16 v21, 0x1e0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v17, 0xa

    move/from16 v0, v17

    new-array v0, v0, [Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x780

    const/16 v21, 0x438

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x5a0

    const/16 v21, 0x5a0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x2

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x5a0

    const/16 v21, 0x438

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x3

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x500

    const/16 v21, 0x2d0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x4

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x3c0

    const/16 v21, 0x2d0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x5

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x2d0

    const/16 v21, 0x1e0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x6

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x280

    const/16 v21, 0x1e0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x7

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x160

    const/16 v21, 0x120

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x8

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0x140

    const/16 v21, 0xf0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    const/16 v18, 0x9

    new-instance v19, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/16 v20, 0xb0

    const/16 v21, 0x90

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mInitializationFailed:Z

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    const-string v18, "video_resolution_supported_key"

    invoke-static {v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "fixed"

    const-string v17, "continuous-picture"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v8, "continuous-picture"

    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    const-string v18, "camera_focus_key"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    const-string v18, "camera_flash_key"

    const-string v19, "off"

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    const-string v19, "camera_resolution_key"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    const-string v19, "video_resolution_key"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    const-string v17, "auto"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v8, "auto"

    goto/16 :goto_5

    :cond_d
    const-string v17, "fixed"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const-string v8, "fixed"

    goto/16 :goto_5

    :cond_e
    const-string v17, "infinity"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const-string v8, "infinity"

    goto/16 :goto_5
.end method

.method private getCameraIdForFacing(I)I
    .locals 5

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxCamera:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFacing["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mFacing:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mFacing:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    const-string v2, "Camera device found."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    const-string v2, "Unable to find camera id for given facing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given facing device does not exist."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initialize()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxCamera:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->acquireCameraSettings(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyCameraSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mNotificationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mNotificationHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public getAudioBitrate()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mAudioBitrate:I

    return v0
.end method

.method public getAudioChannels()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mAudioChannels:I

    return v0
.end method

.method public getAudioEncoder()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mAudioEncoder:I

    return v0
.end method

.method public getAudioSamplingRate()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mAudioSamplingRate:I

    return v0
.end method

.method public getCameraId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    return v0
.end method

.method public getCameraResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    iget v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "camera_resolution_key"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "x"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    return-object v2
.end method

.method public getCameraResolutionForFacing(I)Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;
    .locals 6

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraIdForFacing(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "camera_resolution_key"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "x"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    return-object v3
.end method

.method public getDexwindowState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mDexwindowState:Z

    return v0
.end method

.method public getFacing()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mFacing:[I

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    aget v0, v0, v1

    return v0
.end method

.method public getFlash()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "camera_flash_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFocus()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "camera_focus_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getForcedShutterSound()I
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "csc_pref_camera_forced_shuttersound_key"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getForcedShutterSound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getMaxVideoFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxVideoFileSize:J

    return-wide v0
.end method

.method public getMultiwindowState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMultiwindowState:Z

    return v0
.end method

.method public getNextCameraFacing()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mFacing:[I

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxCamera:I

    rem-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public getSupportedCameraResolution()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "camera_resolution_supported_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCameraResolution(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraIdForFacing(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "camera_resolution_supported_key"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedFacing()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mFacing:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getSupportedFlash()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "camera_flash_supported_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFocus()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "camera_focus_supported_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedVideoResolution()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "video_resolution_supported_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedVideoResolution(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraIdForFacing(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "video_resolution_supported_key"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoBitrate:I

    return v0
.end method

.method public getVideoEncoder()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoEncoder:I

    return v0
.end method

.method public getVideoFrameRate()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoFrameRate:I

    return v0
.end method

.method public getVideoMaxDuration()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoMaxDuration:I

    return v0
.end method

.method public getVideoOutputFormat()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoOutputFormat:I

    return v0
.end method

.method public getVideoResolution()Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    iget v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "video_resolution_key"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "x"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;-><init>(II)V

    return-object v2
.end method

.method public getZoomValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mZoomValue:I

    return v0
.end method

.method public initZoomValue()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mZoomValue:I

    return-void
.end method

.method public isCurrentFlashMode(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getFlash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrontCamera()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraId()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mInitializationFailed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLowBatteryStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mIsLowBattery:Z

    return v0
.end method

.method public isRearCamera()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTemperatureHighToUseFlash()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mIsTemperatureHighToUseFlash:Z

    return v0
.end method

.method public readFromBundle(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxCamera:I

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bundle_key_camera_setting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "bundle_key_camera_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    const-string v3, "bundle_key_max_video_size"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxVideoFileSize:J

    return-void
.end method

.method public registerOnCameraSettingChangedListener(Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$OnCameraSettingChangedListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAudioBitrate(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported audio bitrate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mAudioBitrate:I

    return-void
.end method

.method public setAudioChannels(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mAudioChannels:I

    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported audio encoder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mAudioEncoder:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAudioSamplingRate(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mAudioSamplingRate:I

    return-void
.end method

.method public setCameraFacing(I)V
    .locals 5

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxCamera:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFacing["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mFacing:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mFacing:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    const-string v2, "Camera device found."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    const-string v2, "No camera device exist with given facing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No camera device exist with given facing."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCameraResolution(ILcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraIdForFacing(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedCameraResolution(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported resolution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "camera_resolution_key"

    invoke-virtual {p2}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCameraResolution(Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedCameraResolution()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported resolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "camera_resolution_key"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDexwindowState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mDexwindowState:Z

    return-void
.end method

.method public setFlash(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedFlash()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported flash mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getFlash()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "camera_flash_key"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "camera_flash_key"

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->notifyCameraSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setFocus(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedFocus()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported focus mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "camera_focus_key"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mIsLowBattery:Z

    return-void
.end method

.method public setMaxVideoFileSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum video file size is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxVideoFileSize:J

    return-void
.end method

.method public setMultiwindowState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMultiwindowState:Z

    return-void
.end method

.method public setNextCamera()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxCamera:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    return-void
.end method

.method public setTemperatureHighToUseFlash(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mIsTemperatureHighToUseFlash:Z

    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video bitrate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoBitrate:I

    return-void
.end method

.method public setVideoEncoder(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video encoder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoEncoder:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setVideoFrameRate(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video frame rate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoFrameRate:I

    return-void
.end method

.method public setVideoMaxDuration(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported max Duration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoMaxDuration:I

    return-void
.end method

.method public setVideoOutputFormat(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported output format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mVideoOutputFormat:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setVideoResolution(ILcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getCameraIdForFacing(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedVideoResolution(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported resolution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "video_resolution_key"

    invoke-virtual {p2}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVideoResolution(Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getSupportedVideoResolution()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported resolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "video_resolution_key"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setZoomValue(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mZoomValue:I

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mZoomValue:I

    :cond_0
    return-void
.end method

.method public unregisterOnCameraSettingChangedListener(Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$OnCameraSettingChangedListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToBundle(Landroid/os/Bundle;)V
    .locals 7

    iget v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxCamera:I

    new-array v2, v3, [Landroid/os/Bundle;

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxCamera:I

    if-ge v0, v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v5, v2, v0

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mSettings:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bundle_key_camera_setting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "bundle_key_camera_id"

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mCameraId:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "bundle_key_max_video_size"

    iget-wide v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mMaxVideoFileSize:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method
