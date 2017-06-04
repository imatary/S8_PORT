.class public interface abstract Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;
.super Ljava/lang/Object;
.source "MultiWindowInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Flag;,
        Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface$Zone;
    }
.end annotation


# virtual methods
.method public abstract getRectInfo()Landroid/graphics/Rect;
.end method

.method public abstract getZoneInfo()I
.end method

.method public abstract isMinimized()Z
.end method

.method public abstract isMultiWindow()Z
.end method

.method public abstract isScaleWindow()Z
.end method

.method public abstract makeMultiWindowIntent(Landroid/content/Intent;ILandroid/graphics/Rect;)V
.end method

.method public abstract setStateChangeListener(Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowStateChangeInterface;)V
.end method
