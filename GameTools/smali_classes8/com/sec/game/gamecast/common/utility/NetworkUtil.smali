.class public Lcom/sec/game/gamecast/common/utility/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field public static TYPE_MOBILE:I

.field public static TYPE_NOT_CONNECTED:I

.field public static TYPE_WIFI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->TYPE_WIFI:I

    const/4 v0, 0x2

    sput v0, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->TYPE_MOBILE:I

    const/4 v0, 0x0

    sput v0, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->TYPE_NOT_CONNECTED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectivityStatus(Landroid/content/Context;)I
    .locals 4

    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget v2, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->TYPE_WIFI:I

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->TYPE_MOBILE:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->TYPE_NOT_CONNECTED:I

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
