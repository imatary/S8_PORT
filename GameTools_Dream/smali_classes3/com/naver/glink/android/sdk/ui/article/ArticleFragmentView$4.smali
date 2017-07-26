.class Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;
.super Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;
.source "ArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->b(Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;->a:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)I

    move-result v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;->a:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests;->deleteRequest(ILcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->checkNetworkConnected(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4$1;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4$1;-><init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    return-void
.end method
