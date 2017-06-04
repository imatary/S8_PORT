.class Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;
.super Ljava/lang/Object;
.source "ConnectivityDetector.java"


# instance fields
.field private mConnectivityPolicy:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;

.field private mConnectivityReceiver:Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->mContext:Landroid/content/Context;

    return-void
.end method

.method private registerConnectivityReceiver()V
    .locals 3

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->mConnectivityPolicy:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver$OnStateListener;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->mConnectivityReceiver:Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.gallery3d.WIFI_ONLY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->mConnectivityReceiver:Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterConnectivityReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->mConnectivityReceiver:Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->mConnectivityReceiver:Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public register(Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;)V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->mConnectivityPolicy:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->registerConnectivityReceiver()V

    return-void
.end method

.method public unregister()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->unregisterConnectivityReceiver()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetector;->mConnectivityPolicy:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;

    return-void
.end method
