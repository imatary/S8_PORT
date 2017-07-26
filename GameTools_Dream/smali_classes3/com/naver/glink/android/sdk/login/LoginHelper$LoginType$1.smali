.class final enum Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType$1;
.super Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;
.source "LoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;-><init>(Ljava/lang/String;ILcom/naver/glink/android/sdk/login/LoginHelper$1;)V

    return-void
.end method


# virtual methods
.method public builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->b()Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/naver/glink/android/sdk/login/b;

    invoke-direct {v0, p2}, Lcom/naver/glink/android/sdk/login/b;-><init>(Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nhn/android/naverlogin/OAuthLogin;->getAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->NEED_INIT:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nhn/android/naverlogin/OAuthLogin;->getState(Landroid/content/Context;)Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/configure/a;->d:Lcom/naver/glink/android/sdk/configure/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/configure/a$b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/configure/a;->d:Lcom/naver/glink/android/sdk/configure/a$b;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/configure/a$b;->c:Ljava/lang/String;

    const-string/jumbo v2, "glink"

    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v3

    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/nhn/android/naverlogin/OAuthLogin;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isLogin(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType$1;->init(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->OK:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nhn/android/naverlogin/OAuthLogin;->getState(Landroid/content/Context;)Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedRefreshToken(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType$1;->init(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/nhn/android/naverlogin/data/OAuthLoginState;->NEED_REFRESH_TOKEN:Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nhn/android/naverlogin/OAuthLogin;->getState(Landroid/content/Context;)Lcom/nhn/android/naverlogin/data/OAuthLoginState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType$1;->builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/login/a$b;->a()V

    return-void
.end method

.method public logout(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType$1;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nhn/android/naverlogin/OAuthLogin;->logout(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/naver/glink/android/sdk/a/l;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
