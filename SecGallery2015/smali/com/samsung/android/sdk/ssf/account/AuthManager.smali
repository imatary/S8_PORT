.class public Lcom/samsung/android/sdk/ssf/account/AuthManager;
.super Ljava/lang/Object;
.source "AuthManager.java"


# direct methods
.method public static confirmAuth(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/account/io/AuthReqInfo;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 10

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input shouldn\'t be null apiMgr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "params ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/account/io/AuthReqInfo;->getImsi()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/account/io/AuthReqInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AuthReqInfo IMSI or DeviceId cannot be null IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/account/io/AuthReqInfo;->getImsi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " DeviceID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/account/io/AuthReqInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input shouldn\'t be null userAgent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getServer()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_5
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "dp/v1/auth"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "signup_path"

    invoke-virtual {v8, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    :cond_6
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;

    invoke-direct {v5, p4}, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v3, "User-Agent"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "Authorization"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/json"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "Accept"

    const-string/jumbo v4, "application/json"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p5, :cond_7

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v3

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v4

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v9

    invoke-virtual {v0, v3, v4, v9}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_7
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method public static isAuthenticated(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 12

    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input shouldn\'t be null apiMgr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getImsi()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_2

    if-eqz v9, :cond_2

    if-eqz v7, :cond_2

    if-nez v6, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input shouldn\'t be null.. deviceID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " imsi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AuthHeader="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getServer()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_4

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "dp/v2/isauth"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setCsc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getModelNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setMn(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->getDevice_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v7}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setDevice_id(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v9}, Lcom/samsung/android/sdk/ssf/account/io/IsAuthRequest;->setImsi(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v1, "Authorization"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "User-Agent"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_7
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static requestAuth(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/account/io/MtAuthReqInfo;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 10

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input shouldn\'t be null apiMgr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "info ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input shouldn\'t be null.. deviceID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AuthHeader = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getServer()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "dp/v1/reqauth"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "auth_type"

    invoke-virtual {v3, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;

    invoke-direct {v5, p4}, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Ljava/lang/Object;

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v3, "Authorization"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "User-Agent"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/json"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v3

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v4

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v9

    invoke-virtual {v0, v3, v4, v9}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_5
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method
