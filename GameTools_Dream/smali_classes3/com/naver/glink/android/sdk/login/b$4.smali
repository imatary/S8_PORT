.class Lcom/naver/glink/android/sdk/login/b$4;
.super Ljava/lang/Object;
.source "NaverLoginBuilder.java"

# interfaces
.implements Lcom/nhn/android/naverlogin/connection/NetworkState$RetryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/login/b;->a(Landroid/content/Context;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

.field final synthetic c:Lcom/naver/glink/android/sdk/login/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/login/b;Landroid/content/Context;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/b$4;->c:Lcom/naver/glink/android/sdk/login/b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/login/b$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/login/b$4;->b:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/b$4;->c:Lcom/naver/glink/android/sdk/login/b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/b$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/login/b$4;->b:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/b;->a(Lcom/naver/glink/android/sdk/login/b;Landroid/content/Context;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V

    :cond_0
    return-void
.end method
