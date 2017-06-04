.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;
.super Lcom/samsung/android/app/omcagent/network/auth/AuthBaseResponse;
.source "OMCResponse.java"


# static fields
.field public static final HEADER_NONCE:Ljava/lang/String; = "nonce"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/auth/AuthBaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->messages:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->messages:Ljava/util/Map;

    const-string v1, "error/code"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getErrorRetry()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->messages:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->messages:Ljava/util/Map;

    const-string v1, "error/retry"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getErrorTempURI()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->messages:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->messages:Ljava/util/Map;

    const-string v1, "error/responseURI"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHttpErrorResult(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x384

    :goto_0
    return v0

    :cond_0
    const-string v0, "1001"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1004"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1101"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1102"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1200"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3031"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "2001"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "2005"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x190

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method public getNetworkResult(Landroid/content/Context;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/common/util/NetworkUtil;->isRoamingNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/common/util/NetworkUtil;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x6e

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/common/util/NetworkUtil;->isDataNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x64

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
