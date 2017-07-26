.class Lcom/naver/glink/android/sdk/ui/write/c$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "VideoUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/c;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;",
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/c$1;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/write/c$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/write/c$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/write/c$1;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$1;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$1;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/naver/glink/android/sdk/ui/write/c$a;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$1;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/c$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$1;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$1;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$1;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-interface {v0, p1, p2, v1}, Lcom/naver/glink/android/sdk/ui/write/c$a;->a(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;Lcom/naver/glink/android/sdk/api/request/Request;)V

    :cond_0
    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/c$1;->a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/c$1;->a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;)V

    return-void
.end method
