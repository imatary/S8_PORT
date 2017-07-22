.class public interface abstract Lcom/sec/ims/ImsConfigListener;
.super Ljava/lang/Object;
.source "ImsConfigListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ImsConfigListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetFeatureResponse(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetFeatureResponse(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
