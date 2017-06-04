.class public interface abstract Lcom/samsung/android/visioncloudagent/aidl/IListener;
.super Ljava/lang/Object;
.source "IListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visioncloudagent/aidl/IListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNotifyToApp(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
