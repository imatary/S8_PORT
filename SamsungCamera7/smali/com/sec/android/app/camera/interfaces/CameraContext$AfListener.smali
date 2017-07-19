.class public interface abstract Lcom/sec/android/app/camera/interfaces/CameraContext$AfListener;
.super Ljava/lang/Object;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AfListener"
.end annotation


# virtual methods
.method public abstract onAfStateChanged(I)V
.end method

.method public abstract onMultiAfChanged([B)V
.end method

.method public abstract onPhaseAfChanged(II)V
.end method
