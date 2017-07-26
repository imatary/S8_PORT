.class Lcom/naver/glink/android/sdk/ui/write/c$5;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "VideoUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/api/request/Request;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/write/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/c;Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/c$5;->c:Lcom/naver/glink/android/sdk/ui/write/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/write/c$5;->a:Lcom/naver/glink/android/sdk/api/request/Request;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/write/c$5;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$5;->c:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$5;->c:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$5;->a:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-interface {v0, p1, v1}, Lcom/naver/glink/android/sdk/ui/write/c$a;->a(Lcom/naver/glink/android/sdk/api/Response;Lcom/naver/glink/android/sdk/api/request/Request;)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$5;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$5;->c:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->f(Lcom/naver/glink/android/sdk/ui/write/c;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;Lcom/android/volley/VolleyError;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$5;->c:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$5;->c:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$5;->a:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-interface {v0, p1, p2, v1}, Lcom/naver/glink/android/sdk/ui/write/c$a;->a(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;Lcom/naver/glink/android/sdk/api/request/Request;)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$5;->c:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->f(Lcom/naver/glink/android/sdk/ui/write/c;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/c$5;->a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/c$5;->a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoInfoResponse;)V

    return-void
.end method
