.class public interface abstract Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;
.super Ljava/lang/Object;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AttachMode"
.end annotation


# virtual methods
.method public abstract getAttachVideoFixedResolution()I
.end method

.method public abstract getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;
.end method

.method public abstract getRequestedRecordingDurationLimit()I
.end method

.method public abstract getRequestedRecordingSizeLimit()J
.end method

.method public abstract getRequestedSaveUri()Landroid/net/Uri;
.end method

.method public abstract isAttachVideoFixedResolution()Z
.end method
