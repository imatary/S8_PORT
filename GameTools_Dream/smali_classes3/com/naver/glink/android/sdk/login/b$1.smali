.class Lcom/naver/glink/android/sdk/login/b$1;
.super Lcom/nhn/android/naverlogin/OAuthLoginHandler;
.source "NaverLoginBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/login/b;-><init>(Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

.field final synthetic b:Lcom/naver/glink/android/sdk/login/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/login/b;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/b$1;->b:Lcom/naver/glink/android/sdk/login/b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/login/b$1;->a:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/OAuthLoginHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Z)V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/b$1;->a:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/b$1;->a:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    invoke-interface {v1, p1}, Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;->onLoggedIn(Z)V

    :cond_2
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/Requests;->syncGameUserId(Landroid/content/Context;)V

    goto :goto_0
.end method
