.class Lcom/naver/glink/android/sdk/ui/write/c$2;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "VideoUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/c;->a(Landroid/content/Context;Ljava/lang/String;I)V
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->b(Lcom/naver/glink/android/sdk/ui/write/c;)I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->c(Lcom/naver/glink/android/sdk/ui/write/c;)Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->c(Lcom/naver/glink/android/sdk/ui/write/c;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/c;->d(Lcom/naver/glink/android/sdk/ui/write/c;)I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/write/c;->d(Lcom/naver/glink/android/sdk/ui/write/c;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/c;->d(Lcom/naver/glink/android/sdk/ui/write/c;)I

    move-result v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/write/c;->c(Lcom/naver/glink/android/sdk/ui/write/c;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/write/c$a;->a(II)V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->d(Lcom/naver/glink/android/sdk/ui/write/c;)I

    move-result v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/write/c;->e(Lcom/naver/glink/android/sdk/ui/write/c;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;Ljava/io/File;)I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->d:Lcom/naver/glink/android/sdk/ui/write/c;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Lcom/naver/glink/android/sdk/ui/write/c;)Lcom/naver/glink/android/sdk/ui/write/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/c$2;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-interface {v0, p1, p2, v1}, Lcom/naver/glink/android/sdk/ui/write/c$a;->a(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;Lcom/naver/glink/android/sdk/api/request/Request;)V

    :cond_0
    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/c$2;->a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/c$2;->a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$VideoChunkUploadResponse;)V

    return-void
.end method
