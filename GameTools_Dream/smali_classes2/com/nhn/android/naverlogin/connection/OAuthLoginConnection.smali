.class public Lcom/nhn/android/naverlogin/connection/OAuthLoginConnection;
.super Lcom/nhn/android/naverlogin/connection/CommonConnection;
.source "OAuthLoginConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NaverLoginOAuth|OAuthLoginConnection"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/connection/CommonConnection;-><init>()V

    return-void
.end method

.method public static deleteToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthResponse;
    .locals 3

    invoke-static {}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getBaseInstance()Lcom/nhn/android/naverlogin/util/DeviceAppInfo;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/nhn/android/naverlogin/connection/gen/OAuthQueryGenerator;

    invoke-direct {v2}, Lcom/nhn/android/naverlogin/connection/gen/OAuthQueryGenerator;-><init>()V

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/nhn/android/naverlogin/connection/gen/OAuthQueryGenerator;->generateRequestDeleteAccessTokenUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nhn/android/naverlogin/connection/OAuthLoginConnection;->request(Landroid/content/Context;Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthResponse;

    move-result-object v2

    return-object v2
.end method

.method private static request(Landroid/content/Context;Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthResponse;
    .locals 10

    const/4 v7, 0x0

    invoke-static {p0, p1, v7, v7}, Lcom/nhn/android/naverlogin/connection/CommonConnection;->request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nhn/android/naverlogin/connection/ResponseData;

    move-result-object v0

    iget-object v7, v0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mStat:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    sget-object v8, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->SUCCESS:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    invoke-virtual {v7, v8}, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget v7, v0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mStatusCode:I

    const/16 v8, 0x1f7

    if-ne v7, v8, :cond_0

    new-instance v7, Lcom/nhn/android/naverlogin/data/OAuthResponse;

    sget-object v8, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_TEMPORARILY_UNAVAILABLE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-direct {v7, v8}, Lcom/nhn/android/naverlogin/data/OAuthResponse;-><init>(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    :goto_0
    return-object v7

    :cond_0
    iget v7, v0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mStatusCode:I

    const/16 v8, 0x1f4

    if-ne v7, v8, :cond_1

    new-instance v7, Lcom/nhn/android/naverlogin/data/OAuthResponse;

    sget-object v8, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->SERVER_ERROR_SERVER_ERROR:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-direct {v7, v8}, Lcom/nhn/android/naverlogin/data/OAuthResponse;-><init>(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    goto :goto_0

    :cond_1
    iget-object v7, v0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mStat:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    sget-object v8, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->CONNECTION_TIMEOUT:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    invoke-virtual {v7, v8}, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mStat:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    sget-object v8, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->CONNECTION_FAIL:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    invoke-virtual {v7, v8}, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    new-instance v7, Lcom/nhn/android/naverlogin/data/OAuthResponse;

    sget-object v8, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_CONNECTION_ERROR:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-direct {v7, v8}, Lcom/nhn/android/naverlogin/data/OAuthResponse;-><init>(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    goto :goto_0

    :cond_3
    iget-object v7, v0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mStat:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    sget-object v8, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->NO_PEER_CERTIFICATE:Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;

    invoke-virtual {v7, v8}, Lcom/nhn/android/naverlogin/connection/ResponseData$ResponseDataStat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Lcom/nhn/android/naverlogin/data/OAuthResponse;

    sget-object v8, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_CERTIFICATION_ERROR:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-direct {v7, v8}, Lcom/nhn/android/naverlogin/data/OAuthResponse;-><init>(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    goto :goto_0

    :cond_4
    new-instance v7, Lcom/nhn/android/naverlogin/data/OAuthResponse;

    sget-object v8, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->ERROR_NO_CATAGORIZED:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-direct {v7, v8}, Lcom/nhn/android/naverlogin/data/OAuthResponse;-><init>(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    goto :goto_0

    :cond_5
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v7, v0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mContent:Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-boolean v7, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "NaverLoginOAuth|OAuthLoginConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "len :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "NaverLoginOAuth|OAuthLoginConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "str :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Lcom/nhn/android/naverlogin/data/OAuthResponse;

    invoke-direct {v7, v5}, Lcom/nhn/android/naverlogin/data/OAuthResponse;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-boolean v7, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    const-string/jumbo v7, "NaverLoginOAuth|OAuthLoginConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "content:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/nhn/android/naverlogin/connection/ResponseData;->mContent:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v7, Lcom/nhn/android/naverlogin/data/OAuthResponse;

    sget-object v8, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->CLIENT_ERROR_PARSING_FAIL:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-direct {v7, v8}, Lcom/nhn/android/naverlogin/data/OAuthResponse;-><init>(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v7, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v7, :cond_7

    const-string/jumbo v7, "NaverLoginOAuth|OAuthLoginConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "key:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static requestAccessToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthResponse;
    .locals 7

    invoke-static {}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getBaseInstance()Lcom/nhn/android/naverlogin/util/DeviceAppInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/nhn/android/naverlogin/connection/gen/OAuthQueryGenerator;

    invoke-direct {v0}, Lcom/nhn/android/naverlogin/connection/gen/OAuthQueryGenerator;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nhn/android/naverlogin/connection/gen/OAuthQueryGenerator;->generateRequestAccessTokenUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/nhn/android/naverlogin/connection/OAuthLoginConnection;->request(Landroid/content/Context;Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthResponse;

    move-result-object v0

    return-object v0
.end method

.method public static requestRefreshToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthResponse;
    .locals 3

    invoke-static {}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getBaseInstance()Lcom/nhn/android/naverlogin/util/DeviceAppInfo;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/nhn/android/naverlogin/connection/gen/OAuthQueryGenerator;

    invoke-direct {v2}, Lcom/nhn/android/naverlogin/connection/gen/OAuthQueryGenerator;-><init>()V

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/nhn/android/naverlogin/connection/gen/OAuthQueryGenerator;->generateRequestRefreshAccessTokenUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nhn/android/naverlogin/connection/OAuthLoginConnection;->request(Landroid/content/Context;Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthResponse;

    move-result-object v2

    return-object v2
.end method

.method public static requestWithOAuthHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nhn/android/naverlogin/connection/ResponseData;
    .locals 7

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/nhn/android/naverlogin/connection/CommonConnection;->request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/nhn/android/naverlogin/connection/ResponseData;

    move-result-object v6

    return-object v6
.end method
