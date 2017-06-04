.class public interface abstract Lcom/sec/samsung/gallery/lib/libinterface/WindowManagerInterface;
.super Ljava/lang/Object;
.source "WindowManagerInterface.java"


# virtual methods
.method public abstract isVisiblePackage(Ljava/lang/String;)Z
.end method

.method public abstract requestSystemKeyEvent(ILandroid/content/ComponentName;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
