.class public Lcom/nhn/android/naverlogin/data/OAuthLoginData;
.super Ljava/lang/Object;
.source "OAuthLoginData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NaverLoginOAuth|OAuthLoginData"


# instance fields
.field private mInOAuthCallback:Ljava/lang/String;

.field private mInOAuthClientId:Ljava/lang/String;

.field private mInOAuthClientSecret:Ljava/lang/String;

.field private mInOAuthState:Ljava/lang/String;

.field private mOAuthCode:Ljava/lang/String;

.field private mOAuthErrorCode:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field private mOAuthErrorDesc:Ljava/lang/String;

.field private mOAuthState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private generateState()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    new-instance v3, Ljava/math/BigInteger;

    const/16 v4, 0x82

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mInOAuthClientId:Ljava/lang/String;

    iput-object p2, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mInOAuthClientSecret:Ljava/lang/String;

    iput-object p3, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mInOAuthCallback:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->generateState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mInOAuthState:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p4, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mInOAuthState:Ljava/lang/String;

    goto :goto_0
.end method

.method private isStateOk()Z
    .locals 3

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mInOAuthState:Ljava/lang/String;

    iget-object v1, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mOAuthState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state is not valid. init:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mInOAuthState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", check:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mOAuthState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCallbackUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mInOAuthCallback:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mInOAuthClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mInOAuthClientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->isStateOk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mOAuthCode:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorCode()Lcom/nhn/android/naverlogin/data/OAuthErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mOAuthErrorCode:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    return-object v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mOAuthErrorDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getInitState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mInOAuthState:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mOAuthState:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mOAuthErrorCode:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->isStateOk()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mOAuthCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMiddleResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mOAuthCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mOAuthState:Ljava/lang/String;

    invoke-static {p3}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->fromString(Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mOAuthErrorCode:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    iput-object p4, p0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->mOAuthErrorDesc:Ljava/lang/String;

    return-void
.end method
