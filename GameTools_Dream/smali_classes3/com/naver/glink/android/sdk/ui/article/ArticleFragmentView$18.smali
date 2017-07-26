.class Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "ArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/api/request/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;->success:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->isLastRequest()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->commentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->commentList:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v0, v3}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->pageModel:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Page;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Page;->prevPage:I

    invoke-static {v1, v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->f(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->commentList:Ljava/util/List;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->f(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v1, v3}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->g(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/article/a;->a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v0, v3}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;->a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$18;->a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse;)V

    return-void
.end method
