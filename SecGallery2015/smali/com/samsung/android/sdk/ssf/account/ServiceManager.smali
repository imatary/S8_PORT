.class public Lcom/samsung/android/sdk/ssf/account/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# direct methods
.method public static readPolicy(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/sdk/ssf/account/ServiceManager;->readPolicy(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static readPolicy(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 8

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input shouldn\'t be null apiMgr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "listener ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input shouldn\'t be null AuthHeader="

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

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getServer()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    :goto_0
    return v1

    :cond_3
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "dp/v3/policy"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "csc"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getModelNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "mn"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getModelNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_5
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;

    invoke-direct {v5, p2}, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse;

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v1, "Authorization"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "User-Agent"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_6
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static updateAlive(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ssf/account/ServiceManager;->updateAlive(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static updateAlive(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo;ILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 10

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

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

    const-string/jumbo v4, "params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "listener ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input shouldn\'t be null AuthHeader="

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

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getServer()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "dp/v1/alive"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;

    invoke-direct {v5, p3}, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/account/io/AliveResponse;

    move v4, p2

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

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v3

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v4

    invoke-virtual {p4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v9

    invoke-virtual {v0, v3, v4, v9}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_4
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

.method public static updateService(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;ZILcom/samsung/android/sdk/ssf/SsfListener;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI",
            "Lcom/samsung/android/sdk/ssf/SsfListener;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/account/ServiceManager;->updateService(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;ZILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static updateService(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;ZILcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI",
            "Lcom/samsung/android/sdk/ssf/SsfListener;",
            "Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

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

    const-string/jumbo v4, "serviceType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "listner ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getServer()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    move v1, v3

    :goto_0
    return v1

    :cond_2
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    if-eqz p2, :cond_4

    const-string/jumbo v4, "dp/v1/on"

    invoke-virtual {v7, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_1
    const-string/jumbo v4, "sid"

    const-string/jumbo v8, ","

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;

    invoke-direct {v5, p4}, Lcom/samsung/android/sdk/ssf/account/AccountResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/account/io/ServiceStatus;

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v3, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v3

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v4

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v8

    invoke-virtual {v0, v3, v4, v8}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "dp/v1/off"

    invoke-virtual {v7, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method
