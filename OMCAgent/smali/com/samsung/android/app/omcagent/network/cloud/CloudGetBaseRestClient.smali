.class public abstract Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;
.super Lcom/samsung/android/app/omcagent/network/BaseRestClient;
.source "CloudGetBaseRestClient.java"


# instance fields
.field public context:Landroid/content/Context;

.field protected response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

.field public retry:I

.field public urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/BaseRestClient;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->urlString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    return-object v0
.end method

.method public onError(ILjava/net/HttpURLConnection;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getHttpErrorResult(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V

    return-void
.end method

.method public abstract onRequest()Lcom/samsung/android/app/omcagent/network/ObjectRequest;
.end method

.method public onRetry()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->retry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->retry:I

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->retry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->retry:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getResult()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/network/ResultType;->isNetworkFail(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x190

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getResult()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getResult()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/network/ResultType;->isUserCancel(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSetUp()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getNetworkResult(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->isProcessing()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;->urlString:Ljava/lang/String;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Request wrong url!"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
