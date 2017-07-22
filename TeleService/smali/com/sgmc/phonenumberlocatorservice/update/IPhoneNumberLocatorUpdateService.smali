.class public interface abstract Lcom/sgmc/phonenumberlocatorservice/update/IPhoneNumberLocatorUpdateService;
.super Ljava/lang/Object;
.source "IPhoneNumberLocatorUpdateService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sgmc/phonenumberlocatorservice/update/IPhoneNumberLocatorUpdateService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkDB(Lcom/sgmc/phonenumberlocatorservice/update/IBinderCheckListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateDB(Lcom/sgmc/phonenumberlocatorservice/update/IBinderUpdateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
