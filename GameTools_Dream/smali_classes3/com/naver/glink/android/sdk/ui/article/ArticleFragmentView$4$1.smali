.class Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "ArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;->a(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;)V
    .locals 3

    iget-boolean v0, p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->g(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/article/a;->b(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4$1;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4$1;->a(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentPostResponse;)V

    return-void
.end method
