.class public Lcom/samsung/android/app/omcagent/network/cloud/omc/PollingRestClient;
.super Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;
.source "PollingRestClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/omcagent/network/cloud/CloudGetBaseRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/PollingRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    return-void
.end method


# virtual methods
.method public getURI()Ljava/net/URL;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/PollingRestClient;->urlString:Ljava/lang/String;

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

.method public onRequest()Lcom/samsung/android/app/omcagent/network/ObjectRequest;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/PollingRestClient;->getURI()Ljava/net/URL;

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
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/PollingRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setHttpSuccessResult()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/network/cloud/omc/PollingRestClient;->receiveTextStream(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "message is empty."

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/cloud/omc/PollingRestClient;->response:Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->setBody(Ljava/lang/String;)V

    goto :goto_0
.end method
