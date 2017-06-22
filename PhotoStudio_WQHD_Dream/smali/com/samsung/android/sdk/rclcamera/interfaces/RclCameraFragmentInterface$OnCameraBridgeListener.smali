.class public interface abstract Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;
.super Ljava/lang/Object;
.source "RclCameraFragmentInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCameraBridgeListener"
.end annotation


# virtual methods
.method public abstract onCameraOpened(Landroid/app/Fragment;)V
.end method

.method public abstract onCaptureAvailable()Z
.end method

.method public abstract onError(Landroid/app/Fragment;I)V
.end method

.method public abstract onGalleryButtonClicked(Landroid/app/Fragment;)V
.end method

.method public abstract onPictureTaken(Landroid/app/Fragment;Landroid/net/Uri;)V
.end method

.method public abstract onRecordAvailable()Z
.end method

.method public abstract onRecordButtonClicked(Landroid/app/Fragment;)V
.end method

.method public abstract onRecordingFinished(Landroid/app/Fragment;)V
.end method

.method public abstract onRecordingStarted(Landroid/app/Fragment;)V
.end method

.method public abstract onShutterButtonClicked(Landroid/app/Fragment;)V
.end method

.method public abstract onSwitchButtonClicked(Landroid/app/Fragment;)V
.end method

.method public abstract onVideoTaken(Landroid/app/Fragment;Landroid/net/Uri;)V
.end method
