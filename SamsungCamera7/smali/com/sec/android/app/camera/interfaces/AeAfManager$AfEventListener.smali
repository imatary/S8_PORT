.class public interface abstract Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;
.super Ljava/lang/Object;
.source "AeAfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/AeAfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AfEventListener"
.end annotation


# virtual methods
.method public abstract onAfPosChanged(IIZ)V
.end method

.method public abstract onAfStateChanged(I)V
.end method

.method public abstract onMultiAfChanged([B)V
.end method

.method public abstract onPhaseAfChanged(II)V
.end method
