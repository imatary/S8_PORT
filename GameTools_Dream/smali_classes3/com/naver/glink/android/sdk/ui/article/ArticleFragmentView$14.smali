.class Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$14;
.super Ljava/lang/Object;
.source "ArticleFragmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$14;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$14;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$14;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->b(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)I

    move-result v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$14;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v3}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getParentCommentNo()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/naver/glink/android/sdk/model/Comment;->newComment(IIILjava/lang/String;)Lcom/naver/glink/android/sdk/model/Comment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V

    return-void
.end method
