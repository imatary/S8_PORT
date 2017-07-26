.class Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "ArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)V
    .locals 3

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;->isLike()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/api/requests/LikeRequests;->deleteLikeRequest(ILcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9$1;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9$1;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/api/requests/LikeRequests;->likeRequest(ILcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9$2;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9$2;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$9;->a(Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)V

    return-void
.end method
