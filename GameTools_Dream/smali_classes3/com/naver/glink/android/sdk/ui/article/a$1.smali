.class Lcom/naver/glink/android/sdk/ui/article/a$1;
.super Ljava/lang/Object;
.source "ArticleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/a$1;->a:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a$1;->a:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/a;->a(Lcom/naver/glink/android/sdk/ui/article/a;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a$1;->a:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/a;->b(Lcom/naver/glink/android/sdk/ui/article/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a$1;->a:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/a;->a(Lcom/naver/glink/android/sdk/ui/article/a;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a$1;->a:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/article/a;->c(Lcom/naver/glink/android/sdk/ui/article/a;)Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->getLastCommentNo()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a$1;->a:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/a;->a(Lcom/naver/glink/android/sdk/ui/article/a;)Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a$1;->a:Lcom/naver/glink/android/sdk/ui/article/a;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/article/a;->c(Lcom/naver/glink/android/sdk/ui/article/a;)Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Result;->pageModel:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Page;

    iget v1, v1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$Page;->prevPage:I

    invoke-virtual {v0, v2, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(II)V

    goto :goto_0
.end method
