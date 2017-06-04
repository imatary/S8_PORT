.class public Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;
.super Ljava/lang/Object;
.source "SlinkStorageUtils.java"


# static fields
.field public static final ACTION_ADD_WEB_STORAGE:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkStorageUtils.ACTION_ADD_WEB_STORAGE"

.field public static final ACTION_CLOUD_AUTHENTICATION_EVENT_CALLBACK:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkStorageUtils.ACTION_CLOUD_AUTHENTICATION_EVENT_CALLBACK"

.field public static final EXTRA_ORIGINAL_INTENT:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkStorageUtils.EXTRA_ORIGINAL_INTENT"

.field public static final EXTRA_STORAGE_TYPE:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkStorageUtils.EXTRA_STORAGE_TYPE"

.field public static final IS_AUTOUPLOAD_EXTRA_KEY:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkStorageUtils.IS_AUTOUPLOAD_EXTRA_KEY"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mfl_ApiLib_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;

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
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public createCloudAuthenticationEventHandlerIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkStorageUtils.ACTION_CLOUD_AUTHENTICATION_EVENT_CALLBACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.sdk.samsung.ui.CloudAuthenticationEventCallbackActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkStorageUtils.EXTRA_ORIGINAL_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    return-object v0
.end method

.method public createStorageSignInIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkStorageUtils.ACTION_ADD_WEB_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.ui.AddWebStorageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkStorageUtils.EXTRA_STORAGE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    return-object v0
.end method

.method public signOutOfStorageService(I)V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SignOutOfStorageService.NAME"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkStorageUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "::signOutOfStorageService maybe platform is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
