.class final Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$WakeLockRevokedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlinkNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WakeLockRevokedReceiver"
.end annotation


# instance fields
.field mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$WakeLockRevokedReceiver;->mOwner:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$WakeLockRevokedReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$WakeLockRevokedReceiver;-><init>(Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$WakeLockRevokedReceiver;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.sdk.samsunglink.SlinkNetworkManager.BROADCAST_WAKE_LOCKS_REVOKED"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "mfl_ApiLib_SlinkWakeLock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "::mWakeLockRevokedListener.onReceive: Releasing wake lock tag= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->access$0(Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Received BROADCAST_WAKE_LOCKS_REVOKED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->release()V

    goto :goto_0
.end method
