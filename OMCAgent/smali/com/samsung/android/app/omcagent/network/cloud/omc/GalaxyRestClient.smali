.class public Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;
.super Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;
.source "GalaxyRestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient$ResultValue;,
        Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient$ResultKey;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    return-void
.end method


# virtual methods
.method public getURI()Ljava/net/URL;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->urlString:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onError(ILjava/net/HttpURLConnection;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getHttpErrorResult(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResultCode(I)V

    return-void
.end method

.method public onRequest()Lcom/samsung/android/app/omcagent/network/ObjectRequest;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->getURI()Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "URL is null!"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/omcagent/network/ObjectRequest;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;-><init>(Ljava/net/URL;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->GET:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->setMethod(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader;-><init>()V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader;->getHeaders(J)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->setHeaders(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onResult(Ljava/net/HttpURLConnection;)Z
    .locals 8

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->receiveTextStream(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "message is empty."

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    :try_start_0
    const-string v5, "result/resultCode"

    invoke-static {v0, v5}, Lcom/samsung/android/common/util/Xpath;->getResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "result/resultMsg"

    invoke-static {v0, v5}, Lcom/samsung/android/common/util/Xpath;->getResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Messages:"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result/resultCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result/resultMsg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResultCode(I)V

    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setHttpSuccessResult()V

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v5, v0}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setBody(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v2}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v4, "2000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/GalaxyRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    const/16 v5, 0x190

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setResult(I)V
    :try_end_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
