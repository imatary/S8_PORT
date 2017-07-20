.class public interface abstract Lcom/sgmc/phonenumberlocatorservice/update/IBinderUpdateListener;
.super Ljava/lang/Object;
.source "IBinderUpdateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sgmc/phonenumberlocatorservice/update/IBinderUpdateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
