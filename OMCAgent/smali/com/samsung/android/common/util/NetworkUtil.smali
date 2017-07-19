.class public Lcom/samsung/android/common/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBluetoothNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/samsung/android/common/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Bluetooth Network is connected"

    invoke-static {v0}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDataConnected(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/common/telephony/SecTelephonyManager;->instance:Lcom/samsung/android/common/telephony/SecTelephonyManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->getDataState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDataNetworkConnected(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p0, :cond_1

    const-string v3, "Context is null"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    const-string v3, "ConnectivityManager is null"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v3, "NetworkInfo is null"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isEthernetNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/samsung/android/common/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ethernet Network is connected"

    invoke-static {v0}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMobileNetworkConnected(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/common/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Mobile Network is connected"

    invoke-static {v0}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static isNetworkConnected(Landroid/content/Context;I)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string v3, "Context is null"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v3, "ConnectivityManager is null"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v3, "NetworkInfo is null"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method

.method public static isRoamingNetwork(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/common/telephony/SecTelephonyManager;->instance:Lcom/samsung/android/common/telephony/SecTelephonyManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/common/telephony/SecTelephonyManager;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isRoamingNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/common/util/NetworkUtil;->isRoamingNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/common/util/NetworkUtil;->isDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Data Netoworks use for Roaming"

    invoke-static {v0}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWiFiNetworkConnected(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/common/util/NetworkUtil;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WiFi Network is connected"

    invoke-static {v1}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWiFiNetworkDisconnected(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string v2, "Context is null"

    invoke-static {v2}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v2, "ConnectivityManager is null"

    invoke-static {v2}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, "NetworkInfo is null"

    invoke-static {v2}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method
