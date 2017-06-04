.class public abstract Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractDeviceApiClient;
.super Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;
.source "AbstractDeviceApiClient.java"


# instance fields
.field protected resultObject:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractApiClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    return-void
.end method


# virtual methods
.method public generateBody(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractDeviceApiClient;->deviceInfo:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractDeviceApiClient;->omcInfo:Lcom/samsung/android/app/omcagent/omc/OmcInfo;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;-><init>(Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultObject()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractDeviceApiClient;->resultObject:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;

    return-object v0
.end method

.method public abstract getURI()Ljava/net/URL;
.end method

.method public onResult(Ljava/net/HttpURLConnection;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractDeviceApiClient;->response:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->setHttpSuccessResult()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractDeviceApiClient;->receiveTextStream(Ljava/net/HttpURLConnection;)Ljava/lang/String;

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

    const-class v2, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/AbstractDeviceApiClient;->resultObject:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;

    goto :goto_0
.end method
