.class public interface abstract Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback;
.super Ljava/lang/Object;
.source "IFileShareServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract stateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
