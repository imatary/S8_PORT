.class Lcom/naver/glink/android/sdk/api/request/Request$5;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/api/request/Request;->handleLoginError(Landroid/content/Context;Lcom/android/volley/AuthFailureError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naver/glink/android/sdk/api/request/Request;

.field final synthetic val$retryRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/request/Request$5;->this$0:Lcom/naver/glink/android/sdk/api/request/Request;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/api/request/Request$5;->val$retryRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoggedIn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$5;->val$retryRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$5;->val$retryRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->retry()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/request/Request$5;->val$retryRequest:Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/Request$PendingRequest;->cancel()V

    goto :goto_0
.end method
