.class public interface abstract Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentAPIs;
.super Ljava/lang/Object;
.source "RclCameraFragmentAPIs.java"


# static fields
.field public static final AUDIO_ENCODER_AAC:I = 0x3

.field public static final AUDIO_ENCODER_AMR_NB:I = 0x1

.field public static final CAMERA_FRONT:I = 0x1

.field public static final CAMERA_REAR:I = 0x0

.field public static final ERROR_CAMERA_PRIORITY:I = 0x7

.field public static final ERROR_MEDIA_SERVICE_DIED:I = 0x3

.field public static final ERROR_OPEN_FAILED:I = 0x0

.field public static final ERROR_OPEN_FAILED_VT_CALL:I = 0x6

.field public static final ERROR_RECORD_FAILED:I = 0x2

.field public static final ERROR_SECURITY_FAILED:I = 0x5

.field public static final ERROR_START_PREVIEW:I = 0x1

.field public static final ERROR_UNKNOWN:I = 0x4

.field public static final FEATURE_CAMCORDER:I = 0x4

.field public static final FEATURE_CAMERA:I = 0x2

.field public static final FEATURE_FLASH:I = 0x20

.field public static final FEATURE_FRONT_BEAUTY:I = 0x80

.field public static final FEATURE_GALLERY:I = 0x10

.field public static final FEATURE_MULTIPLE_CAPTURE:I = 0x40

.field public static final FEATURE_SWITCH_CAMERA:I = 0x8

.field public static final VIDEO_ENCODER_H263:I = 0x1

.field public static final VIDEO_ENCODER_H264:I = 0x2

.field public static final VIDEO_OUTPUT_FORMAT_MPEG_4:I = 0x2

.field public static final VIDEO_OUTPUT_FORMAT_THREE_GPP:I = 0x1


# virtual methods
.method public abstract forceSwitchCamera(I)V
.end method

.method public abstract getCameraId()I
.end method

.method public abstract getSupportedFacing()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedPictureSizes(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedVideoSizes(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initialize(ZII)V
.end method

.method public abstract notifyCoverStateChanged(Z)V
.end method

.method public abstract notifyDexModeState(Z)V
.end method

.method public abstract notifyMultiWindowStateChanged(Z)V
.end method

.method public abstract pauseRecord()V
.end method

.method public abstract requestEnableCapture(Z)V
.end method

.method public abstract requestEnableRecord(Z)V
.end method

.method public abstract requestEnableSwitchButton(Z)V
.end method

.method public abstract requestStartPreview()V
.end method

.method public abstract requestStopPreview()V
.end method

.method public abstract requestStopRecording()V
.end method

.method public abstract setAudioBitrate(I)V
.end method

.method public abstract setAudioChannels(I)V
.end method

.method public abstract setAudioEncoder(I)V
.end method

.method public abstract setAudioSamplingRate(I)V
.end method

.method public abstract setFlashState(Ljava/lang/String;)V
.end method

.method public abstract setMaxContainerSize(Landroid/util/Size;)V
.end method

.method public abstract setMaxVideoFileSize(J)V
.end method

.method public abstract setMultiwindowState(Z)V
.end method

.method public abstract setNeedToStartPreview(Ljava/lang/Boolean;)V
.end method

.method public abstract setPictureSize(III)V
.end method

.method public abstract setShutterBoxExtraMargin(I)V
.end method

.method public abstract setVideoBitrate(I)V
.end method

.method public abstract setVideoEncoder(I)V
.end method

.method public abstract setVideoFrameRate(I)V
.end method

.method public abstract setVideoMaxDuration(I)V
.end method

.method public abstract setVideoOutputFormat(I)V
.end method

.method public abstract setVideoSize(III)V
.end method

.method public abstract startRecord()V
.end method

.method public abstract stopRecord()V
.end method

.method public abstract takePicture()V
.end method
