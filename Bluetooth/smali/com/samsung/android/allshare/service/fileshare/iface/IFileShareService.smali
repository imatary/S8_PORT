.class public interface abstract Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService;
.super Ljava/lang/Object;
.source "IFileShareService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelTransfer(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
