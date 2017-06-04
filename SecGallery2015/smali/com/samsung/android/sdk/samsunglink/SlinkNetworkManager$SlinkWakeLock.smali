.class public final Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;
.super Ljava/lang/Object;
.source "SlinkNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlinkWakeLock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$MyServiceConnection;,
        Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$WakeLockRevokedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mfl_ApiLib_SlinkWakeLock"


# instance fields
.field private final context:Landroid/content/Context;

.field private final finalizerGuardian:Ljava/lang/Object;

.field private held:Z

.field private final mWakeLockRevokedListener:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$WakeLockRevokedReceiver;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->held:Z

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$MyServiceConnection;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$MyServiceConnection;-><init>(Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$MyServiceConnection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->serviceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$WakeLockRevokedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$WakeLockRevokedReceiver;-><init>(Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$WakeLockRevokedReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->mWakeLockRevokedListener:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$WakeLockRevokedReceiver;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$1;-><init>(Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->finalizerGuardian:Ljava/lang/Object;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tag must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->tag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public acquire()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "mfl_ApiLib_SlinkWakeLock"

    const-string/jumbo v6, "Enter ::acquire()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->isUpgradeAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/sdk/samsunglink/SlinkSignInUtils;->getPlatformUpgradeIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->context:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.sdk.samsunglink.SlinkNetworkManager.NETWORK_LOCK_SERVICE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    sget-object v6, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v7, "com.mfluent.asp.NTSLockService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-boolean v5, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->held:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v3, v6, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "com.samsung.android.sdk.samsunglink.SlinkNetworkManager.BROADCAST_WAKE_LOCKS_REVOKED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->mWakeLockRevokedListener:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$WakeLockRevokedReceiver;

    const-string/jumbo v7, "com.samsung.android.sdk.samsunglink.permission.BROADCAST_SAMSUNG_LINK"

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-boolean v9, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->held:Z

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v7, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.NetworkLockRequested.NAME"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "mfl_ApiLib_SlinkWakeLock"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "::acquire success = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->held:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " tag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "mfl_ApiLib_SlinkWakeLock"

    const-string/jumbo v6, "::acquire maybe platform is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isHeld()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->held:Z

    return v0
.end method

.method public release()V
    .locals 4

    iget-boolean v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->held:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->held:Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->mWakeLockRevokedListener:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$WakeLockRevokedReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "mfl_ApiLib_SlinkWakeLock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "::release tag = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "mfl_ApiLib_SlinkWakeLock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "::receiver/service already unregistered/unbind:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
