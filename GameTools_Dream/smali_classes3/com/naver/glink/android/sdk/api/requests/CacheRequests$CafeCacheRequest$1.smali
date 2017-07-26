.class Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "CacheRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;->executeByChannelCode(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;

.field final synthetic val$channelCode:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->this$0:Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$channelCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->onFailure(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public onFailure(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-virtual {v0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->onFinally(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public onFinally(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-virtual {v0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->onSuccess(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    return-void
.end method

.method public onSuccess(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget v0, p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->noticeMenuId:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/naver/glink/android/sdk/R$string;->not_configured_notice_menu_id:I

    invoke-static {v1}, Lcom/naver/glink/android/sdk/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget v0, p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->eventMenuId:I

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/naver/glink/android/sdk/R$string;->not_configured_event_menu_id:I

    invoke-static {v1}, Lcom/naver/glink/android/sdk/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$channelCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$channelCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a;->a(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->f()V

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$listener:Lcom/naver/glink/android/sdk/api/request/RequestListener;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->getChannel()Lcom/naver/glink/android/sdk/api/Responses$Channel;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v1

    iget-object v2, v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;->langCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/configure/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->val$channelCode:Ljava/lang/String;

    iget-object v2, v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;->langCode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/naver/glink/android/sdk/api/Responses$Channel;->langCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest$1;->this$0:Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests$CafeCacheRequest;->getCachedResponse()Lcom/naver/glink/android/sdk/api/Response;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->setTag(Ljava/lang/Object;)V

    :cond_5
    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->forChannelsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->setCachedResponse(Lcom/naver/glink/android/sdk/api/Response;)V

    goto :goto_0
.end method
