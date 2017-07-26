.class Lcom/naver/glink/android/sdk/ui/media/b$2;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "AllMediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/media/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/media/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/media/b;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/media/b$2;->a:Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b$2;->a:Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/media/b;->a(Lcom/naver/glink/android/sdk/ui/media/b;Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;)Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b$2;->a:Lcom/naver/glink/android/sdk/ui/media/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/media/b;->a(Lcom/naver/glink/android/sdk/ui/media/b;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b$2;->a:Lcom/naver/glink/android/sdk/ui/media/b;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/naver/glink/android/sdk/ui/media/b;->a(Lcom/naver/glink/android/sdk/ui/media/b;ZLcom/naver/glink/android/sdk/api/response/AllMediaResponse;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/media/b$2;->a:Lcom/naver/glink/android/sdk/ui/media/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/b;->a(Lcom/naver/glink/android/sdk/ui/media/b;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;

    return-void
.end method

.method public synthetic onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/media/b$2;->a(Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/media/b$2;->a(Lcom/naver/glink/android/sdk/api/response/AllMediaResponse;)V

    return-void
.end method
