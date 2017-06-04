.class public Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;
.super Ljava/lang/Object;
.source "SlinkFrameworkStorageGateway.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mfl_ApiLib_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;

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
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public accountInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetCloudStorageAccountInfo.INTENT_ARG_PROVIDER_TYPE"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v7, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetCloudStorageAccountInfo.NAME"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    sget-object v5, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "::accountInfo this.context.getContentResolver().call null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v5, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkStorageGateway;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "::accountInfo maybe platform is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "method_result_str"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
