.class Lcom/naver/glink/android/sdk/ui/write/c$3;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "VideoUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/c;->c(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$CheckCompleteUploadResponse;",
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/c$3;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/write/c$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/write/c$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/write/c$3;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$CheckCompleteUploadResponse;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V

    iget-boolean v0, p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$CheckCompleteUploadResponse;->resultCode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$3;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/c$3;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/write/c;->b(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$CheckCompleteUploadResponse;Lcom/android/volley/VolleyError;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$3;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$3;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$3;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-interface {v0, p1, p2, v1}, Lcom/naver/glink/android/sdk/ui/write/c$a;->a(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;Lcom/naver/glink/android/sdk/api/request/Request;)V

    :cond_0
    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$CheckCompleteUploadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/c$3;->a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$CheckCompleteUploadResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$CheckCompleteUploadResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/c$3;->a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$CheckCompleteUploadResponse;)V

    return-void
.end method
