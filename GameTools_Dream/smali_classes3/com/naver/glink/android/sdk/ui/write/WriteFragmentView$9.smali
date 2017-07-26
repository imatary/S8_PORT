.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$9;
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
        "Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/write/c;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/c;Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$9;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$9;->a:Lcom/naver/glink/android/sdk/ui/write/c;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$9;->b:Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$9;->a:Lcom/naver/glink/android/sdk/ui/write/c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$9;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/write/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;Lcom/android/volley/VolleyError;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$9;->c:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$9;->b:Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/model/Attachment;Lcom/naver/glink/android/sdk/api/request/Request;Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$9;->a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$9;->a(Lcom/naver/glink/android/sdk/api/requests/VideoUploadRequests$UploadKeyResponse;)V

    return-void
.end method
