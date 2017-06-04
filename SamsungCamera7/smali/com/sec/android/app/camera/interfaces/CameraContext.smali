.class public interface abstract Lcom/sec/android/app/camera/interfaces/CameraContext;
.super Ljava/lang/Object;
.source "CameraContext.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewSizeChangedListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$ExtraInfoChangedListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$AfListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$AeStateListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;
    }
.end annotation


# static fields
.field public static final CHECK_POCKET_FINISH_CAMERA_MSG:I = 0x66

.field public static final INSTALL_EFFECT_FILTER_MSG:I = 0x6b

.field public static final LOW_MEMORY_CRITICAL:I = 0xb

.field public static final LOW_MEMORY_WARNING:I = 0xa

.field public static final NEW_SHOOTING_MODES_UPLOADED_MSG:I = 0x6a

.field public static final NEW_STICKER_UPLOADED_MSG:I = 0x69

.field public static final REFRESH_STICKERS_MSG:I = 0x67

.field public static final REQUEST_ANIMATEDGIF_IMAGE:I = 0x7e8

.field public static final REQUEST_ATTACH_IMAGE:I = 0x7d1

.field public static final REQUEST_ATTACH_VIDEO:I = 0x7d2

.field public static final REQUEST_COVER_GALLERY:I = 0x7e1

.field public static final REQUEST_DRAMA_POST:I = 0x7e0

.field public static final REQUEST_LOCATION_PERMISSION:I = 0x7ea

.field public static final REQUEST_MORE_SETTING:I = 0x7e6

.field public static final REQUEST_SAMSUNG_APPS:I = 0x7df

.field public static final REQUEST_SEPARATED_SHOOTINGMODE:I = 0x7e3

.field public static final REQUEST_SHOT_AND_MORE_POST:I = 0x7e2

.field public static final REQUEST_STORAGE_MANAGER:I = 0x7e7

.field public static final REQUEST_UNINSTALL_EFFECT:I = 0x7eb

.field public static final REQUEST_UNINSTALL_STICKER:I = 0x7ed

.field public static final REQUEST_VIDEO_COLLAGE_POST:I = 0x7e9

.field public static final REQUEST_WATERMARK_INPUT_TEXT:I = 0x7ec

.field public static final SHOOTING_MODE_UPDATED_MSG:I = 0x64

.field public static final START_GESTURE_CONTROL_SHOT_MSG:I = 0x65

.field public static final UNINSTALL_EFFECT_FILTER_MSG:I = 0x6c

.field public static final UNINSTALL_STICKER_MSG:I = 0x68

.field public static final UPDATED_EFFECT_FILTER_MSG:I = 0x6d


# virtual methods
.method public abstract addButtonToDimController(Lcom/samsung/android/glview/GLView;)V
.end method

.method public abstract addSnapshotUriListInSecureCamera(Landroid/net/Uri;)V
.end method

.method public abstract addUriListInSecureCamera(Landroid/net/Uri;)V
.end method

.method public abstract dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
.end method

.method public abstract finishOnError(I)V
.end method

.method public abstract getAASBrightnessValue()J
.end method

.method public abstract getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;
.end method

.method public abstract getBackgroundHandler()Landroid/os/Handler;
.end method

.method public abstract getBatteryLevel()I
.end method

.method public abstract getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;
.end method

.method public abstract getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;
.end method

.method public abstract getCurrentWindowHeight()I
.end method

.method public abstract getCurrentWindowOrientation()I
.end method

.method public abstract getCurrentWindowWidth()I
.end method

.method public abstract getGLSurfaceView()Landroid/opengl/GLSurfaceView;
.end method

.method public abstract getImageIDListHaveAddress()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestMedia()Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;
.end method

.method public abstract getMainHandler()Landroid/os/Handler;
.end method

.method public abstract getPreviewAspectRatio()D
.end method

.method public abstract getPreviewSurfaceRect()Landroid/graphics/Rect;
.end method

.method public abstract getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
.end method

.method public abstract getTouchAutoFocusBoundary()Landroid/graphics/Rect;
.end method

.method public abstract getUriListInSecureCamera()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoIDListHaveAddress()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;
.end method

.method public abstract handleCoverCameraChanged(Z)V
.end method

.method public abstract handleCoverCameraClosed()V
.end method

.method public abstract handleKeyCancelled(I)V
.end method

.method public abstract handleShapeCorrectionModeChanged(I)V
.end method

.method public abstract handleShootingModeChanged(I)V
.end method

.method public abstract handleTouchCancelled()V
.end method

.method public abstract hideCoverCamera()V
.end method

.method public abstract hideFaceRect(Z)V
.end method

.method public abstract hideTouchEVSlider()V
.end method

.method public abstract inactivateRecordingMode()V
.end method

.method public abstract installShootingModeShortcut(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract installShootingModeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract isAASManagerAvailable()Z
.end method

.method public abstract isAttachImageMode()Z
.end method

.method public abstract isAttachMode()Z
.end method

.method public abstract isAttachVideoMode()Z
.end method

.method public abstract isBatteryCharging()Z
.end method

.method public abstract isBurstCaptureAvailable()Z
.end method

.method public abstract isCameraDialogVisible()Z
.end method

.method public abstract isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)Z
.end method

.method public abstract isCapturing()Z
.end method

.method public abstract isCoverOpen()Z
.end method

.method public abstract isExternalMemoryAvailable()Z
.end method

.method public abstract isFromLockScreen()Z
.end method

.method public abstract isLaunchGallery()Z
.end method

.method public abstract isLauncherCameraIntent()Z
.end method

.method public abstract isMenuReadyForFaceDetection()Z
.end method

.method public abstract isMicrophoneEnabled()Z
.end method

.method public abstract isMicrophonePlugged()Z
.end method

.method public abstract isMusicActive()Z
.end method

.method public abstract isObjectTrackingEnabled()Z
.end method

.method public abstract isOneHandZoomAvailable()Z
.end method

.method public abstract isScreenFlashAvailable()Z
.end method

.method public abstract isShootingModeActivated()Z
.end method

.method public abstract isShutterPressed()Z
.end method

.method public abstract isSquarePreviewAspectRatio()Z
.end method

.method public abstract isSuperWidePreviewAspectRatio()Z
.end method

.method public abstract isTouchEVSupported()Z
.end method

.method public abstract isTouchPreviewArea(II)Z
.end method

.method public abstract isTouchToCaptureStarted()Z
.end method

.method public abstract isWidePreviewAspectRatio()Z
.end method

.method public abstract isZoomAvailable()Z
.end method

.method public abstract needToResizeForCamcorderPreviewAspectRatio()Z
.end method

.method public abstract needToResizeForCameraPreviewAspectRatio()Z
.end method

.method public abstract onExtraInfo(II)V
.end method

.method public abstract onImageStoringCompleted()V
.end method

.method public abstract onJpegPictureTaken()V
.end method

.method public abstract onLaunchGallery(Ljava/lang/String;)Z
.end method

.method public abstract onMultiFrameShotReset()V
.end method

.method public abstract onMultiFrameShotStarted()V
.end method

.method public abstract onRecordingPrepareStarted()V
.end method

.method public abstract onRecordingStopped()V
.end method

.method public abstract onShootingModeRecordKeyReleased()V
.end method

.method public abstract onStartingPreviewCompleted()V
.end method

.method public abstract onSwitchCameraCompleted()V
.end method

.method public abstract onSwitchCameraIdCompleted()V
.end method

.method public abstract onVideoStoringCompleted(Landroid/net/Uri;)V
.end method

.method public abstract playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V
.end method

.method public abstract registerCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V
.end method

.method public abstract registerExtraInfoChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$ExtraInfoChangedListener;)V
.end method

.method public abstract registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V
.end method

.method public abstract registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V
.end method

.method public abstract registerPreviewSizeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewSizeChangedListener;)V
.end method

.method public abstract removeButtonFromDimController(Lcom/samsung/android/glview/GLView;)V
.end method

.method public abstract removeHideTouchEVMessage()V
.end method

.method public abstract resetFaceRect()V
.end method

.method public abstract resetFaceRectVisibility()V
.end method

.method public abstract resizePreviewAspectRatio(I)Z
.end method

.method public abstract restartHideTouchEVMessage()V
.end method

.method public abstract restartInactivityTimer()V
.end method

.method public abstract restorePreviousShootingMode()V
.end method

.method public abstract sendBroadcastChangeSettings(II)V
.end method

.method public abstract sendBroadcastChangeSettings(ILjava/lang/String;)V
.end method

.method public abstract sendBroadcastChangeSettings(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendCompletedMessageToBixby()V
.end method

.method public abstract setAASBrightnessValue(F)V
.end method

.method public abstract setAeStateListener(Lcom/sec/android/app/camera/interfaces/CameraContext$AeStateListener;)V
.end method

.method public abstract setAfListener(Lcom/sec/android/app/camera/interfaces/CameraContext$AfListener;)V
.end method

.method public abstract setButtonDim(II)V
.end method

.method public abstract setLCDFlashMode(Z)V
.end method

.method public abstract setTouchToCaptureStarted(Z)V
.end method

.method public abstract showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
.end method

.method public abstract showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showEffectLayout(Z)V
.end method

.method public abstract showNoImagePopup()V
.end method

.method public abstract showTouchEVSlider()V
.end method

.method public abstract startAttachActivity()V
.end method

.method public abstract startShareActivity(Landroid/net/Uri;)V
.end method

.method public abstract startVoiceRecognizer()V
.end method

.method public abstract stopCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;)V
.end method

.method public abstract stopInactivityTimer()V
.end method

.method public abstract stopVoiceRecognizer()V
.end method

.method public abstract switchToRecordingMode()V
.end method

.method public abstract uninstallExternalEffectPackage(Ljava/lang/String;I)V
.end method

.method public abstract uninstallShootingModePackage(Ljava/lang/String;)V
.end method

.method public abstract uninstallShootingModeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unregisterCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V
.end method

.method public abstract unregisterExtraInfoChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$ExtraInfoChangedListener;)V
.end method

.method public abstract unregisterHRMShutterListener()V
.end method

.method public abstract unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V
.end method

.method public abstract unregisterPreviewSizeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewSizeChangedListener;)V
.end method

.method public abstract updateFaceRect([Landroid/graphics/Rect;Z)V
.end method

.method public abstract updateIfResolutionChanged()V
.end method

.method public abstract updateLatestMedia()V
.end method

.method public abstract updateRemainCounter()V
.end method

.method public abstract updateSecureUriList()V
.end method

.method public abstract updateStorage(Z)V
.end method

.method public abstract updateThumbnail()V
.end method

.method public abstract updateThumbnail(Landroid/graphics/Bitmap;IZ)V
.end method

.method public abstract updateUIWhenResetSettings()V
.end method
