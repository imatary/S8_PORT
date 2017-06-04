.class public interface abstract Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;
.super Ljava/lang/Object;
.source "DesktopModeInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;
    }
.end annotation


# virtual methods
.method public abstract isDesktopDockConnected()Z
.end method

.method public abstract isDesktopMode()Z
.end method

.method public abstract registerListener()V
.end method

.method public abstract setDesktopModeManagerListener(Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;)V
.end method

.method public abstract unregisterListener()V
.end method
