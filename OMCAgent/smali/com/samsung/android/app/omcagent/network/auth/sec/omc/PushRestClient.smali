.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PushRestClient;
.super Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;
.source "PushRestClient.java"


# static fields
.field private static final URL_ADD_PUSH:Ljava/lang/String; = "/v4/api/device/registerPushInfo"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/PushInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/PushInfo;)V

    return-void
.end method


# virtual methods
.method public generateBody(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/PushRequest;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PushRestClient;->pushInfo:Lcom/samsung/android/app/omcagent/network/PushInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/PushRequest;-><init>(Lcom/samsung/android/app/omcagent/network/PushInfo;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/PushRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URL;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PushRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorTempURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PushRestClient;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCDef;->getServerHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v4/api/device/registerPushInfo"

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

    const-string v4, "/v4/api/device/registerPushInfo"

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
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PushRestClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setHttpSuccessResult()V

    const/4 v0, 0x1

    return v0
.end method
