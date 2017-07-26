.class public Lcom/nhn/android/naverlogin/data/OAuthResponse;
.super Ljava/lang/Object;
.source "OAuthResponse.java"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mErrorCode:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

.field private mErrorDescription:Ljava/lang/String;

.field private mExpiresIn:J

.field private mRefreshToken:Ljava/lang/String;

.field private mResultValue:Ljava/lang/String;

.field private mTokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mErrorCode:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-virtual {p1}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->getDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mErrorDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nhn/android/naverlogin/data/OAuthErrorCode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mErrorCode:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    iput-object p2, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mErrorDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "access_token"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mAccessToken:Ljava/lang/String;

    const-string/jumbo v1, "refresh_token"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mRefreshToken:Ljava/lang/String;

    const-string/jumbo v1, "token_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mTokenType:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v1, "expires_in"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mExpiresIn:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "error"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->fromString(Ljava/lang/String;)Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    move-result-object v1

    iput-object v1, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mErrorCode:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    const-string/jumbo v1, "error_description"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mErrorDescription:Ljava/lang/String;

    const-string/jumbo v1, "result"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mResultValue:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    const-wide/16 v2, 0xe10

    iput-wide v2, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mExpiresIn:J

    goto :goto_0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Lcom/nhn/android/naverlogin/data/OAuthErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mErrorCode:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    return-object v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mErrorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 2

    iget-wide v0, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mExpiresIn:J

    return-wide v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getResultValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mResultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mErrorCode:Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    invoke-virtual {v1}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nhn/android/naverlogin/data/OAuthResponse;->mAccessToken:Ljava/lang/String;

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
