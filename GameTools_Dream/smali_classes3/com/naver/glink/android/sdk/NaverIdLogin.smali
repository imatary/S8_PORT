.class public Lcom/naver/glink/android/sdk/NaverIdLogin;
.super Ljava/lang/Object;
.source "NaverIdLogin.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/NaverIdLogin$OnGetProfileListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfile(Landroid/content/Context;Lcom/naver/glink/android/sdk/NaverIdLogin$OnGetProfileListener;)V
    .locals 4

    invoke-static {p0}, Lcom/naver/glink/android/sdk/NaverIdLogin;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/naver/glink/android/sdk/NaverIdLogin$5;

    const-string/jumbo v1, "https://openapi.naver.com/v1/nid/me"

    new-instance v2, Lcom/naver/glink/android/sdk/NaverIdLogin$3;

    invoke-direct {v2, p1}, Lcom/naver/glink/android/sdk/NaverIdLogin$3;-><init>(Lcom/naver/glink/android/sdk/NaverIdLogin$OnGetProfileListener;)V

    new-instance v3, Lcom/naver/glink/android/sdk/NaverIdLogin$4;

    invoke-direct {v3, p1}, Lcom/naver/glink/android/sdk/NaverIdLogin$4;-><init>(Lcom/naver/glink/android/sdk/NaverIdLogin$OnGetProfileListener;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/NaverIdLogin$5;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->getInstance(Landroid/content/Context;)Lcom/naver/glink/android/sdk/api/request/VolleyQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/naver/glink/android/sdk/NaverIdLogin$OnGetProfileListener;->onResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isLogin(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->NAVER:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static login(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/NaverIdLogin$1;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/NaverIdLogin$1;-><init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static logout(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/NaverIdLogin$2;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/NaverIdLogin$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
