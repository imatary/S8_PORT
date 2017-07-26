.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "WriteFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$AttachMovieResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

.field final synthetic b:Lcom/naver/glink/android/sdk/api/request/Request;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;Lcom/naver/glink/android/sdk/api/request/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;->a:Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;->b:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$AttachMovieResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;->a:Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;->b:Lcom/naver/glink/android/sdk/api/request/Request;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/Attachment;Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$AttachMovieResponse;Lcom/android/volley/VolleyError;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;->a:Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;->b:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/Attachment;Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$AttachMovieResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;->a(Lcom/naver/glink/android/sdk/api/Responses$AttachMovieResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$AttachMovieResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$8;->a(Lcom/naver/glink/android/sdk/api/Responses$AttachMovieResponse;)V

    return-void
.end method
