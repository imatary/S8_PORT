.class Lcom/naver/glink/android/sdk/ui/article/a/a$3;
.super Lcom/naver/glink/android/sdk/a/o;
.source "CommentViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/a/a;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/article/a/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/a/a;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/a/a$3;->c:Lcom/naver/glink/android/sdk/ui/article/a/a;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/a/a$3;->a:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/article/a/a$3;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a$3;->a:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->deleted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a$3;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a/a$3;->a:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->userIdNo:Ljava/lang/String;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/a/a$3;->a:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    iget-boolean v2, v2, Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;->mine:Z

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
