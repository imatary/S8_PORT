.class public interface abstract Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerListener;
.super Ljava/lang/Object;
.source "CameraTemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/provider/CameraTemperatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TemperatureManagerListener"
.end annotation


# virtual methods
.method public abstract onTemperatureManagerChanged(ZZ)V
.end method

.method public abstract onTemperatureManagerLimitFlash(Z)V
.end method

.method public abstract onTemperatureManagerStopCamera()V
.end method
