.class public Lcom/nhn/android/naverlogin/OAuthLogin;
.super Ljava/lang/Object;
.source "OAuthLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;,
        Lcom/nhn/android/naverlogin/OAuthLogin$OAuthNaverAppInstallMethod;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NaverLoginOAuth|OAuthLogin"

.field public static mOAuthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

.field private static sInstance:Lcom/nhn/android/naverlogin/OAuthLogin;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;
    .locals 1

    sget-object v0, Lcom/nhn/android/naverlogin/OAuthLogin;->sInstance:Lcom/nhn/android/naverlogin/OAuthLogin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nhn/android/naverlogin/OAuthLogin;

    invoke-direct {v0}, Lcom/nhn/android/naverlogin/OAuthLogin;-><init>()V

    sput-object v0, Lcom/nhn/android/naverlogin/OAuthLogin;->sInstance:Lcom/nhn/android/naverlogin/OAuthLogin;

    :cond_0
    sget-object v0, Lcom/nhn/android/naverlogin/OAuthLogin;->sInstance:Lcom/nhn/android/naverlogin/OAuthLogin;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "4.1.4.1"

    return-object v0
.end method

.method private valid(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v2, "NaverLoginOAuth|OAuthLogin"

    const-string/jumbo v3, "context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    invoke-direct {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "NaverLoginOAuth|OAuthLogin"

    const-string/jumbo v3, "CliendId is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "NaverLoginOAuth|OAuthLogin"

    const-string/jumbo v3, "CliendSecret is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAccessToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v1, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    invoke-direct {v1, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getExpiresAt(Landroid/content/Context;)J
    .locals 3

    new-instance v2, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    invoke-direct {v2, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getExpiresAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastErrorCode(Landroid/content/Context;)Lcom/nhn/android/naverlogin/data/OAuthErrorCode;
    .locals 2

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    invoke-direct {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getLastErrorCode()Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    move-result-object v1

    return-object v1
.end method

.method public getLastErrorDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    invoke-direct {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getLastErrorDesc()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRefreshToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    invoke-direct {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1
.end method

.method public getState(Landroid/content/Context;)Lcom/nhn/android/naverlogin/data/OAuthLoginState;
    .locals 4

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/OAuthLogin;->valid(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->NEED_INIT:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    invoke-direct {v1, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->NEED_LOGIN:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->NEED_REFRESH_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->OK:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    goto :goto_0
.end method

.method public getTokenType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    invoke-direct {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getTokenType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nhn/android/naverlogin/OAuthLogin;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    invoke-direct {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setClientId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setClientSecret(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setClientName(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setCallbackUrl(Ljava/lang/String;)V

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->NONE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorCode(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorDesc(Ljava/lang/String;)V

    return-void
.end method

.method public logout(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    invoke-direct {v0, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setAccessToken(Ljava/lang/String;)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setRefreshToken(Ljava/lang/String;)V

    sget-object v1, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->NONE:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorCode(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorDesc(Ljava/lang/String;)V

    return-void
.end method

.method public logoutAndDeleteToken(Landroid/content/Context;)Z
    .locals 9

    const/4 v6, 0x0

    new-instance v4, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    invoke-direct {v4, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/nhn/android/naverlogin/OAuthLogin;->logout(Landroid/content/Context;)V

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, v1, v2, v0}, Lcom/nhn/android/naverlogin/connection/OAuthLoginConnection;->deleteToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthResponse;

    move-result-object v5

    const-string/jumbo v7, "success"

    invoke-virtual {v5}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getResultValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    invoke-virtual {v5}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getErrorCode()Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorCode(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    invoke-virtual {v5}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getErrorDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorDesc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v7, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->ERROR_NO_CATAGORIZED:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-virtual {v4, v7}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorCode(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setLastErrorDesc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refreshAccessToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    new-instance v3, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;

    invoke-direct {v3, p1}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lcom/nhn/android/naverlogin/connection/OAuthLoginConnection;->requestRefreshToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v5}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setAccessToken(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5}, Lcom/nhn/android/naverlogin/data/OAuthResponse;->getExpiresIn()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lcom/nhn/android/naverlogin/data/OAuthLoginPreferenceManager;->setExpiresAt(J)V

    goto :goto_0
.end method

.method public requestApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bearer "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "NaverLoginOAuth|OAuthLogin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "at:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "NaverLoginOAuth|OAuthLogin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "header:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, p3, v2, v2, v0}, Lcom/nhn/android/naverlogin/connection/CommonConnection;->request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nhn/android/naverlogin/connection/ResponseData;

    move-result-object v1

    sget-boolean v3, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "NaverLoginOAuth|OAuthLogin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "res.statuscode"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/nhn/android/naverlogin/connection/ResponseData;->mStatusCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "NaverLoginOAuth|OAuthLogin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "res.content"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/nhn/android/naverlogin/connection/ResponseData;->mContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v1, :cond_2

    :goto_0
    return-object v2

    :cond_2
    iget-object v2, v1, Lcom/nhn/android/naverlogin/connection/ResponseData;->mContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMarketLinkWorking(Z)V
    .locals 0

    sput-boolean p1, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->MARKET_LINK_WORKING:Z

    return-void
.end method

.method public startOauthLoginActivity(Landroid/app/Activity;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V
    .locals 4

    const/4 v2, 0x1

    new-instance v3, Lcom/nhn/android/naverlogin/OAuthLogin$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/nhn/android/naverlogin/OAuthLogin$1;-><init>(Lcom/nhn/android/naverlogin/OAuthLogin;Landroid/app/Activity;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V

    invoke-static {p1, v2, v3}, Lcom/nhn/android/naverlogin/connection/NetworkState;->checkConnectivity(Landroid/content/Context;ZLcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    sput-object p2, Lcom/nhn/android/naverlogin/OAuthLogin;->mOAuthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    invoke-virtual {p0, p1}, Lcom/nhn/android/naverlogin/OAuthLogin;->getRefreshToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;

    invoke-direct {v2, p0, p1}, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;-><init>(Lcom/nhn/android/naverlogin/OAuthLogin;Landroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/nhn/android/naverlogin/OAuthLogin$OAuthLoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/nhn/android/naverlogin/ui/OAuthLoginActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
