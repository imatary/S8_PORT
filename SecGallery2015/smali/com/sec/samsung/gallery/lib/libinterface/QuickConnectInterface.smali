.class public interface abstract Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface;
.super Ljava/lang/Object;
.source "QuickConnectInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface$QuickConnectDataListener;
    }
.end annotation


# virtual methods
.method public abstract isBezelSupported()Z
.end method

.method public abstract registerListener()V
.end method

.method public abstract setQuickConnectDataListener(Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface$QuickConnectDataListener;)V
.end method

.method public abstract unRegisterListener()V
.end method
