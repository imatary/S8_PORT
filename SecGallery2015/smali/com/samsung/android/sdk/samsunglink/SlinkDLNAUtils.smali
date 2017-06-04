.class public Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;
.super Ljava/lang/Object;
.source "SlinkDLNAUtils.java"


# static fields
.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SlinkDLNAUtils.EXTRA_DEVICE_ID"

.field public static final EXTRA_IP:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SlinkDLNAUtils.EXTRA_IP"

.field public static final NAME:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SlinkDLNAUtils.NAME"

.field private static sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;

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
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public clearDMRIP(I)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.ClearDMRIP.EXTRA_DEVICE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.ClearDMRIP.NAME"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public setAllowedDMRIP(ILjava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SetAllowedDMRIP.EXTRA_DEVICE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SetAllowedDMRIP.EXTRA_IP"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkDLNAUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SetAllowedDMRIP.NAME"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
