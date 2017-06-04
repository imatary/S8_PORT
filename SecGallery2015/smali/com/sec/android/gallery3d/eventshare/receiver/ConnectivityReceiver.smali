.class public Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver$OnStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectivityReceiver"


# instance fields
.field private final mOnStateListener:Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver$OnStateListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver$OnStateListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver;->mOnStateListener:Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver$OnStateListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ConnectivityReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive : \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.gallery3d.WIFI_ONLY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver;->mOnStateListener:Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver$OnStateListener;

    invoke-static {p2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityUtil;->isWifiOnly(Landroid/content/Intent;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver$OnStateListener;->onChangeWifiOnly(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver;->mOnStateListener:Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver$OnStateListener;

    invoke-static {p1}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver$OnStateListener;->onChangeNetwork(I)V

    goto :goto_0
.end method
