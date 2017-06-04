.class public Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;
.super Lcom/android/volley/toolbox/BasicNetwork;
.source "CommonBasicNetwork.java"


# static fields
.field private static SLOW_REQUEST_THRESHOLD_MS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private authorizationListener:Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SSF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    const/16 v0, 0xbb8

    sput v0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    return-void
.end method

.method private attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    :try_start_0
    invoke-interface {v2, p3}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "%s-retry [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "%s-timeout-giveup [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    throw v0
.end method

.method private checkBadRequestForAuthFailureOrThrowException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/ServerError;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->authorizationListener:Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->hasTriedForAuthFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    throw p3

    :cond_0
    const-string/jumbo v0, "Bad request encountered. Refresh authorization and retry."

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->authorizationListener:Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;

    iget-object v1, p3, Lcom/android/volley/ServerError;->networkResponse:Lcom/android/volley/NetworkResponse;

    invoke-interface {v0, p2, v1}, Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;->refreshAccessToken(Lcom/android/volley/Request;Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Request;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string/jumbo v0, "Retrying request after refreshing access token"

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "%s-retry [timeout=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    invoke-virtual {p2, v3}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->triedForAuthFailure(Z)V

    :cond_1
    return-void

    :cond_2
    throw p3

    :cond_3
    throw p3
.end method

.method private commonAddCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "If-None-Match"

    iget-object v2, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v2, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private commonLogSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request",
            "<*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->DEBUG:Z

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const-string/jumbo v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method private entityToBytes(Lorg/apache/http/HttpEntity;Lcom/android/volley/Request;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/android/volley/Request",
            "<*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/ServerError;
        }
    .end annotation

    new-instance v1, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v8, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    long-to-int v9, v10

    invoke-direct {v1, v8, v9}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    const/4 v0, 0x0

    const/4 v6, 0x0

    instance-of v8, p2, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    if-eqz v8, :cond_0

    move-object v6, p2

    check-cast v6, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    const/4 v9, 0x0

    if-nez v5, :cond_2

    :try_start_1
    new-instance v8, Lcom/android/volley/ServerError;

    invoke-direct {v8}, Lcom/android/volley/ServerError;-><init>()V

    throw v8
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catch_0
    move-exception v8

    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_0
    if-eqz v5, :cond_1

    if-eqz v9, :cond_7

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_1
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v8

    :try_start_5
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_2
    iget-object v9, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v9, v0}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v8

    :cond_2
    :try_start_6
    iget-object v8, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v10, 0x400

    invoke-virtual {v8, v10}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_4

    add-int/2addr v7, v2

    rem-int/lit16 v8, v4, 0xc8

    if-nez v8, :cond_3

    if-eqz v6, :cond_3

    const-wide/16 v10, 0x1

    invoke-virtual {v6, v7, v10, v11}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->deliverProgress(IJ)V

    const/4 v7, 0x0

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8, v2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v8

    if-eqz v5, :cond_5

    if-eqz v9, :cond_6

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5
    :goto_4
    :try_start_8
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_5
    iget-object v9, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v9, v0}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v8

    :catch_1
    move-exception v10

    :try_start_9
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catch_2
    move-exception v3

    const-string/jumbo v9, "Error occured when calling consumingContent"

    sget-object v10, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v10

    :try_start_a
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :catch_4
    move-exception v3

    const-string/jumbo v9, "Error occured when calling consumingContent"

    sget-object v10, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_2
    move-exception v8

    goto :goto_0
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    :goto_0
    const/4 v10, 0x0

    const/4 v7, 0x0

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->commonAddCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v9}, Lcom/android/volley/toolbox/HttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v14

    const/16 v3, 0x130

    if-ne v15, v3, :cond_1

    new-instance v3, Lcom/android/volley/NetworkResponse;

    const/16 v16, 0x130

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v3, v0, v6, v14, v1}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    :goto_2
    return-object v3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v6

    iget-object v6, v6, Lcom/android/volley/Cache$Entry;->data:[B

    goto :goto_1

    :cond_1
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->entityToBytes(Lorg/apache/http/HttpEntity;Lcom/android/volley/Request;)[B

    move-result-object v7

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v4, v16, v12

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->commonLogSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V

    const/16 v3, 0xc8

    if-lt v15, v3, :cond_2

    const/16 v3, 0x12b

    if-le v15, v3, :cond_4

    :cond_2
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/ssf/common/model/CancelException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :catch_0
    move-exception v2

    const-string/jumbo v3, "socket"

    new-instance v6, Lcom/android/volley/TimeoutError;

    invoke-direct {v6}, Lcom/android/volley/TimeoutError;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v6}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    :try_start_1
    new-array v7, v3, [B

    goto :goto_3

    :cond_4
    new-instance v3, Lcom/android/volley/NetworkResponse;

    const/4 v6, 0x0

    invoke-direct {v3, v15, v7, v14, v6}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/samsung/android/sdk/ssf/common/model/CancelException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v3, "connection"

    new-instance v6, Lcom/android/volley/TimeoutError;

    invoke-direct {v6}, Lcom/android/volley/TimeoutError;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v6}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Bad URL "

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v2

    sget-object v3, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/ssf/common/model/CancelError;

    const-string/jumbo v6, "cancel error"

    invoke-direct {v3, v6}, Lcom/samsung/android/sdk/ssf/common/model/CancelError;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_4
    move-exception v2

    sget-object v3, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/ssf/common/model/SocketError;

    invoke-direct {v3, v2}, Lcom/samsung/android/sdk/ssf/common/model/SocketError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_5
    move-exception v2

    sget-object v3, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v11, 0x0

    if-eqz v10, :cond_6

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    if-eqz v7, :cond_9

    new-instance v11, Lcom/android/volley/NetworkResponse;

    const/4 v3, 0x0

    invoke-direct {v11, v15, v7, v14, v3}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    const/16 v3, 0x191

    if-eq v15, v3, :cond_5

    const/16 v3, 0x193

    if-ne v15, v3, :cond_7

    :cond_5
    const-string/jumbo v3, "auth"

    new-instance v6, Lcom/android/volley/AuthFailureError;

    invoke-direct {v6, v11}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v6}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    :cond_6
    new-instance v3, Lcom/android/volley/NoConnectionError;

    invoke-direct {v3, v2}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_7
    const/16 v3, 0x190

    if-ne v15, v3, :cond_8

    const-string/jumbo v3, "BadRequest"

    new-instance v6, Lcom/android/volley/ServerError;

    invoke-direct {v6, v11}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v6}, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->checkBadRequestForAuthFailureOrThrowException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/ServerError;)V

    goto/16 :goto_0

    :cond_8
    new-instance v3, Lcom/android/volley/ServerError;

    invoke-direct {v3, v11}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v3

    :cond_9
    new-instance v3, Lcom/android/volley/NetworkError;

    invoke-direct {v3, v11}, Lcom/android/volley/NetworkError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v3
.end method

.method public setAuthorizationListener(Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonBasicNetwork;->authorizationListener:Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;

    return-void
.end method
