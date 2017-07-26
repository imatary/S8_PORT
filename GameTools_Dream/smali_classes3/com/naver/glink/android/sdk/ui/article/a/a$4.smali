.class Lcom/naver/glink/android/sdk/ui/article/a/a$4;
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
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

.field final synthetic b:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/article/a/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/a/a;Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/a/a$4;->c:Lcom/naver/glink/android/sdk/ui/article/a/a;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/a/a$4;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/article/a/a$4;->b:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/a/a$4;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/a/a$4;->b:Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;

    invoke-virtual {v0, p1, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/requests/CommentRequests$CommentsResponse$CommonComment;)V

    return-void
.end method
