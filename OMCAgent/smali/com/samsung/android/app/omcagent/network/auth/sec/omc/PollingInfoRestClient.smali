.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PollingInfoRestClient;
.super Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractDeviceApiClient;
.source "PollingInfoRestClient.java"


# static fields
.field private static final URL_CONFIG_POLLING:Ljava/lang/String; = "/v4/api/device/getPollingInfo"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractDeviceApiClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    return-void
.end method


# virtual methods
.method public getURI()Ljava/net/URL;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PollingInfoRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorTempURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PollingInfoRestClient;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCDef;->getServerHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v4/api/device/getPollingInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v4/api/device/getPollingInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v2, v1}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onRequest()Lcom/samsung/android/app/omcagent/network/ObjectRequest;
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PollingInfoRestClient;->getURI()Ljava/net/URL;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "URL is null!"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    new-instance v7, Lcom/samsung/android/app/omcagent/network/ObjectRequest;

    invoke-direct {v7, v8}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;-><init>(Ljava/net/URL;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->GET:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->setMethod(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCHeader;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCHeader;-><init>()V

    const-string v1, "q95ikwe7b6"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PollingInfoRestClient;->deviceID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->getBody()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;->instance:Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PollingInfoRestClient;->context:Landroid/content/Context;

    invoke-virtual {v5, v9}, Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;->getDeviceNonce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCHeader;->generateAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCHeader;->getHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->setHeaders(Ljava/util/Map;)V

    goto :goto_0
.end method
