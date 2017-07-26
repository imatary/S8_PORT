.class final enum Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType$2;
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
    new-instance v0, Lcom/naver/glink/android/sdk/login/c;

    invoke-direct {v0, p2}, Lcom/naver/glink/android/sdk/login/c;-><init>(Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;->NEED_INIT:Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;

    invoke-static {}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->c()Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public isLogin(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType$2;->init(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;->OK:Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;

    invoke-static {}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->c()Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public login(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType$2;->builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/login/a$b;->a()V

    return-void
.end method

.method public logout(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType$2;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->e()V

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/GRequests;->logoutRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    invoke-static {p1}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a(Landroid/content/Context;)V

    invoke-static {p1, v1}, Lcom/naver/glink/android/sdk/a/l;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
