.class public interface abstract Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;
.super Ljava/lang/Object;
.source "RecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/RecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onBuildMediaRecorderProfile(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)V
.end method

.method public abstract onCancelRecordingRequested()V
.end method

.method public abstract onRecordingEvent(I)V
.end method

.method public abstract onRecordingMaxDurationReached()V
.end method

.method public abstract onRecordingMaxFileSizeReached()V
.end method

.method public abstract onRecordingRestricted(ZZ)V
.end method

.method public abstract onRecordingTick(JJ)V
.end method

.method public abstract onStopProgress(I)V
.end method

.method public abstract onStopRecordingRequested(Z)V
.end method

.method public abstract onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
.end method

.method public abstract onVideoStoringCompleted()Z
.end method
