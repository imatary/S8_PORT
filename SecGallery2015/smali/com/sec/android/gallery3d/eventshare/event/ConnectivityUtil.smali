.class public Lcom/sec/android/gallery3d/eventshare/event/ConnectivityUtil;
.super Ljava/lang/Object;
.source "ConnectivityUtil.java"


# static fields
.field public static final MOBILE_CONNECTED:I = 0x2

.field public static final NETWORK_TYPE_NAM:[Ljava/lang/String;

.field public static final NOT_CONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConnectivityUtil"

.field public static final WIFI_CONNECTED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "NOT_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "WIFI_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "MOBILE_CONNECTED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityUtil;->NETWORK_TYPE_NAM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkState(Landroid/content/Context;)I
    .locals 5

    const/4 v2, 0x0

    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    const-string/jumbo v3, "ConnectivityUtil"

    const-string/jumbo v4, "wifi enabled"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const-string/jumbo v3, "ConnectivityUtil"

    const-string/jumbo v4, "Not connected"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x2

    const-string/jumbo v3, "ConnectivityUtil"

    const-string/jumbo v4, "mobile enabled"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Intent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.sec.android.gallery3d.WIFI_ONLY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "EVENT_SHARE_WIFI_ONLY_VALUE"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "ConnectivityUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wifi Only : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_0

    const-string/jumbo v2, "ON"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string/jumbo v2, "OFF"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "SHOULD Check intent is \"com.sec.android.gallery3d.WIFI_ONLY_CHANGED\""

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
