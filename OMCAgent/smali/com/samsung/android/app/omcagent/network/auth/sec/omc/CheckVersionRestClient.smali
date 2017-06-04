.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;
.super Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;
.source "CheckVersionRestClient.java"


# static fields
.field private static final URL_CHECK_VERSION:Ljava/lang/String; = "/v4/api/service/getOMCUpdateVersion"


# instance fields
.field private initType:Ljava/lang/String;

.field private resultObject:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    iput-object p4, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->initType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateBody(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->deviceInfo:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->omcInfo:Lcom/samsung/android/app/omcagent/omc/OmcInfo;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;-><init>(Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->initType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->setInitType(Ljava/lang/String;)V

    const-string v1, "PUSH"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->initType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->omcInfo:Lcom/samsung/android/app/omcagent/omc/OmcInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->setSessionId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getResultObject()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->resultObject:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;

    return-object v0
.end method

.method public getURI()Ljava/net/URL;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorTempURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCDef;->getServerHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v4/api/service/getOMCUpdateVersion"

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

    const-string v4, "/v4/api/service/getOMCUpdateVersion"

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

.method public onResult(Ljava/net/HttpURLConnection;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setHttpSuccessResult()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->receiveTextStream(Ljava/net/HttpURLConnection;)Ljava/lang/String;

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
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/CheckVersionRestClient;->resultObject:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/CheckUpdateResponse;

    goto :goto_0
.end method
