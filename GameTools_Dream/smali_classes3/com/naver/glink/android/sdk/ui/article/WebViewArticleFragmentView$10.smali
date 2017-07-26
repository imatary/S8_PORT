.class Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$10;
.super Ljava/lang/Object;
.source "WebViewArticleFragmentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/model/Comment;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$10;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$10;->a:Lcom/naver/glink/android/sdk/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$10;->a:Lcom/naver/glink/android/sdk/model/Comment;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Comment;->isNewComment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$10;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->e(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;

    move-result-object v0

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;->commentWritable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$10;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$10;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    sget v2, Lcom/naver/glink/android/sdk/R$string;->comment_write_permission_error:I

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$10;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$10;->a:Lcom/naver/glink/android/sdk/model/Comment;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;I)V

    goto :goto_0
.end method
