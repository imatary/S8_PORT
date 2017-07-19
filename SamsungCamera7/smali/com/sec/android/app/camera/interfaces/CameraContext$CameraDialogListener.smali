.class public interface abstract Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
.super Ljava/lang/Object;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraDialogListener"
.end annotation


# virtual methods
.method public abstract onCancelDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
.end method

.method public abstract onCreateDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
.end method

.method public abstract onDismissDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
.end method

.method public abstract onNegativeButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
.end method

.method public abstract onPositiveButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
.end method
