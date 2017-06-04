.class public abstract Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;
.super Lcom/samsung/android/app/omcagent/network/BaseRestClient;
.source "AbstractApiClient.java"


# instance fields
.field protected body:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected deviceID:Ljava/lang/String;

.field protected deviceInfo:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

.field protected errorObject:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;

.field protected omcInfo:Lcom/samsung/android/app/omcagent/omc/OmcInfo;

.field protected pushInfo:Lcom/samsung/android/app/omcagent/network/PushInfo;

.field protected response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

.field protected retry:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/BaseRestClient;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->deviceID:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->deviceInfo:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->omcInfo:Lcom/samsung/android/app/omcagent/omc/OmcInfo;

    new-instance v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/PushInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/BaseRestClient;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/network/PushInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->deviceID:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->pushInfo:Lcom/samsung/android/app/omcagent/network/PushInfo;

    new-instance v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    return-void
.end method

.method private isValidBody(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract generateBody(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public getErrorObject()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->errorObject:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;

    return-object v0
.end method

.method public getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    return-object v0
.end method

.method public abstract getURI()Ljava/net/URL;
.end method

.method public onError(ILjava/net/HttpURLConnection;)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->receiveTextStream(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "error message is empty."

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    const/16 v2, 0x384

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setResult(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->errorObject:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->errorObject:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setResult(I)V

    goto :goto_0
.end method

.method public onRequest()Lcom/samsung/android/app/omcagent/network/ObjectRequest;
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->getURI()Ljava/net/URL;

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

    sget-object v1, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->POST:Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/ObjectRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->setMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->body:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->setBody(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCHeader;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCHeader;-><init>()V

    const-string v1, "q95ikwe7b6"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->deviceID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->getBody()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;->instance:Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->context:Landroid/content/Context;

    invoke-virtual {v5, v9}, Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;->getDeviceNonce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCHeader;->generateAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCHeader;->getHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/app/omcagent/network/ObjectRequest;->setHeaders(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public abstract onResult(Ljava/net/HttpURLConnection;)Z
.end method

.method public onRetry()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->retry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->retry:I

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->retry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-string v1, "N"

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorRetry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->retry:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getResult()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/network/ResultType;->isNetworkFail(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSetUp()Z
    .locals 5

    const/16 v4, 0x190

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getNetworkResult(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setResult(I)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->isProcessing()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->deviceID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setResult(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->generateBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->body:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->body:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->isValidBody(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setResult(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTearDown(Ljava/net/HttpURLConnection;)V
    .locals 4

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const-string v2, "nonce"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "nonce header is null"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;->instance:Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;->setDeviceNonce(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
