.class public Lcom/sec/samsung/gallery/lib/se/SeQuickConnect;
.super Ljava/lang/Object;
.source "SeQuickConnect.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBezelSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerListener()V
    .locals 0

    return-void
.end method

.method public setQuickConnectDataListener(Lcom/sec/samsung/gallery/lib/libinterface/QuickConnectInterface$QuickConnectDataListener;)V
    .locals 0

    return-void
.end method

.method public unRegisterListener()V
    .locals 0

    return-void
.end method
