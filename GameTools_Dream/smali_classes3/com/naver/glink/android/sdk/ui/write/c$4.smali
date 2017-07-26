.class Lcom/naver/glink/android/sdk/ui/write/c$4;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "VideoUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/c;->d(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/naver/glink/android/sdk/api/request/Request;

.field final synthetic d:Lcom/naver/glink/android/sdk/ui/write/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/api/request/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/c$4;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/write/c$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/write/c$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/write/c$4;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V

    iget-boolean v0, p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse;->resultCode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse;->data:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse$Data;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse$Data;->thumbnailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$4;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/c$4;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/write/c$4;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse;->data:Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse$Data;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse$Data;->thumbnailList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse;Lcom/android/volley/VolleyError;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$4;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$4;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$4;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-interface {v0, p1, p2, v1}, Lcom/naver/glink/android/sdk/ui/write/c$a;->a(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;Lcom/naver/glink/android/sdk/api/request/Request;)V

    :cond_0
    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/c$4;->a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/c$4;->a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoThumInfoResponse;)V

    return-void
.end method
