.class public Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;
.super Ljava/lang/Object;
.source "CloudResponse.java"


# static fields
.field public static final LIMIT_ROAMING_NETWORK:Z = true

.field public static final PERMIT_ROAMING_NETWORK:Z


# instance fields
.field protected body:Ljava/lang/String;

.field protected icon:[B

.field protected result:I

.field protected resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpErrorResult(I)I
    .locals 4

    const/16 v0, 0x1f4

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const/16 v0, 0x64

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x194

    if-ne v1, p1, :cond_2

    const/16 v0, 0x190

    goto :goto_0

    :cond_2
    if-ne v0, p1, :cond_0

    goto :goto_0
.end method

.method public getIcon()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->icon:[B

    return-object v0
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

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->result:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->resultCode:I

    return v0
.end method

.method public isProcessing()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->result:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->result:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->body:Ljava/lang/String;

    return-void
.end method

.method public setHttpSuccessResult()V
    .locals 1

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V

    return-void
.end method

.method public setIcon([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->icon:[B

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->result:I

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->resultCode:I

    return-void
.end method
