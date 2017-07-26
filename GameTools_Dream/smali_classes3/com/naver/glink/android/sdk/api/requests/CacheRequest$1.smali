.class Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "CacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;ZLcom/naver/glink/android/sdk/api/request/RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/api/requests/CacheRequest;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;->this$0:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;->val$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;->val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;->this$0:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->access$100(Lcom/naver/glink/android/sdk/api/requests/CacheRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-virtual {v0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method public onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;->val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-virtual {v0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    :try_start_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;->this$0:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->access$100(Lcom/naver/glink/android/sdk/api/requests/CacheRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-virtual {v0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;->this$0:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->access$100(Lcom/naver/glink/android/sdk/api/requests/CacheRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;->this$0:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->access$202(Lcom/naver/glink/android/sdk/api/requests/CacheRequest;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;

    return-void
.end method

.method public onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/naver/glink/android/sdk/api/Response;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;->this$0:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->access$002(Lcom/naver/glink/android/sdk/api/requests/CacheRequest;Lcom/naver/glink/android/sdk/api/Response;)Lcom/naver/glink/android/sdk/api/Response;

    :try_start_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequest$1;->this$0:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->access$100(Lcom/naver/glink/android/sdk/api/requests/CacheRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method
