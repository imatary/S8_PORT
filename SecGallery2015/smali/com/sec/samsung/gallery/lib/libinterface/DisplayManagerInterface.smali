.class public interface abstract Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;
.super Ljava/lang/Object;
.source "DisplayManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;
    }
.end annotation


# virtual methods
.method public abstract checkExceptionalCase()I
.end method

.method public abstract connectWifiDisplayWithMode(ILjava/lang/String;)V
.end method

.method public abstract disconnectWifiDisplay()V
.end method

.method public abstract getWifiDisplayStatus()Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;
.end method

.method public abstract getWifiDisplayStatus(Landroid/content/Intent;)Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;
.end method

.method public abstract scanWifiDisplays()V
.end method

.method public abstract setActivityState(Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface$wfdAppState;)V
.end method

.method public abstract stopScanWifiDisplays()V
.end method
