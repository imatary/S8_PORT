.class public Lcom/samsung/android/sdk/ssf/contact/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# direct methods
.method private static checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->validateInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SsfClient instance cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input shouldn\'t be null. SsfListner has null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private static checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->validateInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SsfClient instance cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static deleteProfileImageByByteBlocking(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;[BLjava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Landroid/os/NetworkOnMainThreadException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_0

    new-instance v1, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "CID cannot be null or empty"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "imagePath cannot be null or empty"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getFileServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ors/v2/rm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "uid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "access_token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "cid"

    invoke-virtual {v1, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "did"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x3

    const-class v3, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;

    const-class v9, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;

    invoke-direct {v5, v7, v9}, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v1, "x-sc-appId"

    const-string/jumbo v3, "3z5w443l4l"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v3, "image/*"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    if-nez p5, :cond_3

    new-instance p5, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x1388

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p5, v1, v3, v4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    :cond_3
    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :try_start_0
    invoke-virtual {v7}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    throw v6

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    throw v6
.end method

.method public static deleteProfileImageToORSBlocking(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Landroid/os/NetworkOnMainThreadException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_0

    new-instance v1, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "CID cannot be null or empty"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "imagePath cannot be null or empty"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getFileServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ors/v2/rm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "uid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "access_token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "cid"

    invoke-virtual {v1, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "did"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x3

    const-class v3, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;

    const-class v9, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;

    invoke-direct {v5, v7, v9}, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v1, "x-sc-appId"

    const-string/jumbo v3, "3z5w443l4l"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "User-Agent"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v3, "image/*"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    if-nez p5, :cond_3

    new-instance p5, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x1388

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p5, v1, v3, v4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    :cond_3
    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {p5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :try_start_0
    invoke-virtual {v7}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    throw v6

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    throw v6
.end method

.method public static downloadProfileImage(Lcom/samsung/android/sdk/ssf/SsfClient;IILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0, p4}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientListnerValidity(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "url cannot be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v4, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;

    invoke-direct {v4, p4}, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;-><init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/ProfileManager$1;

    const/4 v1, 0x0

    move-object v2, p6

    move v3, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager$1;-><init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    const-string/jumbo v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/FileRequest;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v6, 0x64

    rem-long/2addr v2, v6

    long-to-int v1, v2

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setPriorityInt(I)V

    if-nez p7, :cond_1

    new-instance p7, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x1388

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p7, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    :cond_1
    invoke-virtual {p7}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p7}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v2

    invoke-virtual {p7}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setTimeout(IIF)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setProgressWhat(I)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public static updatePrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ssf/contact/server/ContactException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updatePrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static updatePrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ssf/contact/server/ContactException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v3, 0x7531

    const-string/jumbo v4, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input shouldn\'t be null. PrivacyRequestInfo has null value : privacyInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "uc/v1/profile/privacy"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "APIID"

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/SsfResult;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v11, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v5, v6, v11}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v3, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v3

    const-string/jumbo v4, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setUseGZip(Z)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_2
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;

    invoke-virtual {v7, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v8, :cond_4

    iget v3, v8, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v4, 0x2710

    if-ne v3, v4, :cond_3

    return v1

    :cond_3
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    invoke-direct {v1, v8}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(Lcom/samsung/android/sdk/ssf/SsfResult;)V

    throw v1

    :cond_4
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v3, 0x2af8

    const-string/jumbo v4, "Internal Sdk Error"

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static updateProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ssf/contact/server/ContactException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v3, 0x7531

    const-string/jumbo v4, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input shouldn\'t be null.ImageMetaInfoList has null value: imageMeta="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "uc/v1/profile/img"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "APIID"

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/SsfResult;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v11, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v5, v6, v11}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v3, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v3

    const-string/jumbo v4, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_2
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;

    invoke-virtual {v7, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v8, :cond_4

    iget v3, v8, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v4, 0x2710

    if-ne v3, v4, :cond_3

    return v1

    :cond_3
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    invoke-direct {v1, v8}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(Lcom/samsung/android/sdk/ssf/SsfResult;)V

    throw v1

    :cond_4
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v3, 0x2af8

    const-string/jumbo v4, "Internal Sdk Error"

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static updateProfileInfo(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ssf/contact/server/ContactException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updateProfileInfo(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v0

    return v0
.end method

.method public static updateProfileInfo(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ssf/contact/server/ContactException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v3, 0x7531

    const-string/jumbo v4, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input shouldn\'t be null.ProfileInfo has null value: profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "uc/v1/profile"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "APIID"

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/samsung/android/sdk/ssf/common/util/CommonUtils;->getTdkApiId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-class v3, Lcom/samsung/android/sdk/ssf/SsfResult;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v11, Lcom/samsung/android/sdk/ssf/SsfResult;

    invoke-direct {v5, v6, v11}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v3, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v3

    const-string/jumbo v4, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v3

    const-string/jumbo v4, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setUseGZip(Z)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_2
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    invoke-virtual {v7, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v8, :cond_4

    iget v3, v8, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v4, 0x2710

    if-ne v3, v4, :cond_3

    return v1

    :cond_3
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    invoke-direct {v1, v8}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(Lcom/samsung/android/sdk/ssf/SsfResult;)V

    throw v1

    :cond_4
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v3, 0x2af8

    const-string/jumbo v4, "Internal Sdk Error"

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static uploadProfileImage(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;IZLcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Landroid/os/NetworkOnMainThreadException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v3, v5, :cond_0

    new-instance v3, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v3}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v3

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "CID cannot be null or empty"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-nez p3, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Input stream cannot be null"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    if-gtz p4, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "fileLength cannot be <= 0"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getFileServerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    const-string/jumbo v3, "ors/v2/upload"

    invoke-virtual {v10, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v5, "access_token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v5, "cid"

    invoke-virtual {v3, v5, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v5, "uid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v5, "did"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v5, "publish"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v3, 0x1

    const-class v5, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;

    const/4 v6, -0x1

    new-instance v7, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;

    const-class v11, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;

    invoke-direct {v7, v9, v11}, Lcom/samsung/android/sdk/ssf/file/server/FileResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v3, "User-Agent"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "x-sc-appId"

    const-string/jumbo v5, "3z5w443l4l"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v5, "image/*"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v3, "application/octet-stream"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBodyContentType(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setInputStream(Ljava/io/InputStream;)V

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setLength(I)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    if-nez p6, :cond_4

    new-instance p6, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v3, 0x1388

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p6

    invoke-direct {v0, v3, v5, v6}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    :cond_4
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v5

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v6

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :try_start_0
    invoke-virtual {v9}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    throw v8

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    throw v8
.end method
