.class public interface abstract Lcom/enhance/gameservice/IGameTunerCallback;
.super Ljava/lang/Object;
.source "IGameTunerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/enhance/gameservice/IGameTunerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onListUpdate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
