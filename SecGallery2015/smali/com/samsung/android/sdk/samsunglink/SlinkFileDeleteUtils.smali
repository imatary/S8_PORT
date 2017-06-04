.class public Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;
.super Ljava/lang/Object;
.source "SlinkFileDeleteUtils.java"


# static fields
.field public static final ACTION_DELETE_MODAL:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.filedelete.DeleteModal"

.field private static sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;

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
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public createModalDeleteActivityIntent(Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.filedelete.DeleteModal"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.ui.DeleteActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaSet;->writeToIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileDeleteUtils;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    return-object v0
.end method
