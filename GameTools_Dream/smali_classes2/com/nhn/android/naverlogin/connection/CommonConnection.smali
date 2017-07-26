.class public Lcom/nhn/android/naverlogin/connection/CommonConnection;
.super Ljava/lang/Object;
.source "CommonConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NaverLoginOAuth|CommonConnection"

.field protected static mCancel:Z

.field protected static mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mCancel:Z

    sget-object v0, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaverLoginOAuth|CommonConnection"

    const-string/jumbo v1, "httpclient operation canceled (shutdown)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_0
    return-void
.end method

.method private static getDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 4

    const/4 v0, 0x0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    sget v2, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->TIMEOUT:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v2, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->TIMEOUT:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v2, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->TIMEOUT:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    return-object v0
.end method

.method public static getDefaultHttpClient(Landroid/content/Context;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2

    invoke-static {}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getBaseInstance()Lcom/nhn/android/naverlogin/util/DeviceAppInfo;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nhn/android/naverlogin/connection/CommonConnection;->getDefaultHttpClient(Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    return-object v1
.end method

.method protected static getDefaultHttpClient(Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 5

    invoke-static {}, Lcom/nhn/android/naverlogin/connection/CommonConnection;->getDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string/jumbo v2, "http.useragent"

    invoke-interface {v1, v2, p0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    sget-boolean v2, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NaverLoginOAuth|CommonConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "user-agent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static isBusy()Z
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nhn/android/naverlogin/connection/ResponseData;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/nhn/android/naverlogin/connection/CommonConnection;->request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/nhn/android/naverlogin/connection/ResponseData;

    move-result-object v0

    return-object v0
.end method

.method public static request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nhn/android/naverlogin/connection/ResponseData;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/nhn/android/naverlogin/connection/CommonConnection;->request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/nhn/android/naverlogin/connection/ResponseData;

    move-result-object v0

    return-object v0
.end method

.method public static request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/nhn/android/naverlogin/connection/ResponseData;
    .locals 13

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v8, Lcom/nhn/android/naverlogin/connection/ResponseData;

    invoke-direct {v8}, Lcom/nhn/android/naverlogin/connection/ResponseData;-><init>()V

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-class v10, Lcom/nhn/android/naverlogin/connection/CommonConnection;

    monitor-enter v10

    if-nez p5, :cond_1

    :try_start_0
    sget-object v9, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v9, :cond_1

    sget-object v9, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->BUSY:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const-string/jumbo v11, "HttpClient already in use."

    invoke-virtual {v8, v9, v11}, Lcom/nhn/android/naverlogin/connection/ResponseData;->setResultCode(Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;Ljava/lang/String;)V

    monitor-exit v10

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    sget-boolean v9, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "NaverLoginOAuth|CommonConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "request url : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    sget-object v9, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->URL_ERROR:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const-string/jumbo v11, "strRequestUrl is null"

    invoke-virtual {v8, v9, v11}, Lcom/nhn/android/naverlogin/connection/ResponseData;->setResultCode(Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;Ljava/lang/String;)V

    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_4
    if-eqz p5, :cond_9

    if-eqz p3, :cond_8

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    invoke-static/range {p3 .. p3}, Lcom/nhn/android/naverlogin/connection/CommonConnection;->getDefaultHttpClient(Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v3

    :goto_1
    const/4 v9, 0x0

    sput-boolean v9, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mCancel:Z

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p2, :cond_5

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    const-string/jumbo v9, "Cookie"

    invoke-virtual {v6, v9, p2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p4, :cond_6

    const-string/jumbo v9, "Authorization"

    invoke-virtual {v6, v9}, Lorg/apache/http/client/methods/HttpGet;->removeHeaders(Ljava/lang/String;)V

    const-string/jumbo v9, "Authorization"

    move-object/from16 v0, p4

    invoke-virtual {v6, v9, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v9, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v9, :cond_6

    const-string/jumbo v9, "NaverLoginOAuth|CommonConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "header:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz p5, :cond_b

    invoke-virtual {v3, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v4

    move-object v5, v6

    :goto_2
    if-eqz v4, :cond_7

    :try_start_4
    invoke-static {v4}, Lcom/nhn/android/naverlogin/util/CookieUtil;->getCookie(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v4, v7}, Lcom/nhn/android/naverlogin/connection/ResponseData;->setResponseData(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_7
    :goto_3
    if-eqz p5, :cond_c

    :try_start_5
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    if-eqz p5, :cond_f

    const/4 v3, 0x0

    :goto_5
    sget-boolean v9, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mCancel:Z

    if-eqz v9, :cond_0

    new-instance v1, Lcom/nhn/android/naverlogin/connection/ResponseData;

    invoke-direct {v1}, Lcom/nhn/android/naverlogin/connection/ResponseData;-><init>()V

    sget-object v9, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->CANCEL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    const-string/jumbo v10, "User cancel"

    invoke-virtual {v1, v9, v10}, Lcom/nhn/android/naverlogin/connection/ResponseData;->setResultCode(Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;Ljava/lang/String;)V

    move-object v8, v1

    goto/16 :goto_0

    :cond_8
    :try_start_6
    invoke-static {p0}, Lcom/nhn/android/naverlogin/connection/CommonConnection;->getDefaultHttpClient(Landroid/content/Context;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v3

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    invoke-static/range {p3 .. p3}, Lcom/nhn/android/naverlogin/connection/CommonConnection;->getDefaultHttpClient(Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v9

    sput-object v9, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto/16 :goto_1

    :cond_a
    invoke-static {p0}, Lcom/nhn/android/naverlogin/connection/CommonConnection;->getDefaultHttpClient(Landroid/content/Context;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v9

    sput-object v9, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :cond_b
    :try_start_7
    sget-object v9, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v9, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v4

    move-object v5, v6

    goto :goto_2

    :catch_0
    move-exception v2

    :goto_6
    sget-object v9, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->CONNECTION_TIMEOUT:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    invoke-virtual {v2}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/nhn/android/naverlogin/connection/ResponseData;->setResultCode(Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_7
    sget-object v9, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->NO_PEER_CERTIFICATE:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/nhn/android/naverlogin/connection/ResponseData;->setResultCode(Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_8
    sget-object v9, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->CONNECTION_FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/nhn/android/naverlogin/connection/ResponseData;->setResultCode(Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v2

    sget-object v9, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "setResponseData() on request() failed :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/nhn/android/naverlogin/connection/ResponseData;->setResultCode(Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_c
    :try_start_8
    sget-object v9, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_4

    :catch_4
    move-exception v2

    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz p5, :cond_d

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_d
    const/4 v9, 0x0

    sput-object v9, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto/16 :goto_5

    :catchall_1
    move-exception v9

    if-eqz p5, :cond_e

    const/4 v3, 0x0

    :goto_9
    throw v9

    :cond_e
    const/4 v10, 0x0

    sput-object v10, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto :goto_9

    :cond_f
    const/4 v9, 0x0

    sput-object v9, Lcom/nhn/android/naverlogin/connection/CommonConnection;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto/16 :goto_5

    :catch_5
    move-exception v2

    move-object v5, v6

    goto :goto_8

    :catch_6
    move-exception v2

    move-object v5, v6

    goto :goto_7

    :catch_7
    move-exception v2

    move-object v5, v6

    goto :goto_6
.end method

.method public static request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/nhn/android/naverlogin/connection/ResponseData;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/nhn/android/naverlogin/connection/CommonConnection;->request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/nhn/android/naverlogin/connection/ResponseData;

    move-result-object v0

    return-object v0
.end method
