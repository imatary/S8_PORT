.class public final Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;
.super Ljava/lang/Object;
.source "SlinkNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;
    }
.end annotation


# static fields
.field public static final BROADCAST_INITIALIZING_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkNetworkManager.BROADCAST_INITIALIZING_STATE_CHANGED"

.field public static final BROADCAST_WAKE_LOCKS_REVOKED:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkNetworkManager.BROADCAST_WAKE_LOCKS_REVOKED"

.field public static final EXTRA_INITIALIZING_STATE_CONNECTED:Ljava/lang/String; = "SlinkNetworkManager.BROADCAST_INITIALIZING_STATE_CHANGED"

.field private static final NETWORK_LOCK_SERVICE:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkNetworkManager.NETWORK_LOCK_SERVICE"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mfl_ApiLib_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "context is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public createWakeLock(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;)V

    return-object v0
.end method

.method public getScsCoreConfig()Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetScsCoreConfig.NAME"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-class v3, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v3, "method_result"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/samsunglink/network/SlinkScsCoreConfig;

    :cond_0
    return-object v1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::getScsCoreConfig maybe platform is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.IsInitialized.NAME"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "::isInitialized result is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "::isInitialized maybe platform is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "method_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method

.method public requestRefresh()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.RequestNetworkRefresh.NAME"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "::requestRefresh maybe platform is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestRefresh(J)V
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.RequestNetworkRefresh.INTENT_ARG_DEVICE_ID"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.RequestNetworkRefresh.NAME"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "::requestRefresh(long) maybe platform is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSyncMediaPriority(I)V
    .locals 6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SetSyncMediaTypePriority.INTENT_ARG_MEDIA_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SetSyncMediaTypePriority.NAME"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "::setSyncMediaPriority maybe platform is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
