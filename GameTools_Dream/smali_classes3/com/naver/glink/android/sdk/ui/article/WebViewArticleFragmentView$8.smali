.class Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$8;
.super Ljava/lang/Object;
.source "WebViewArticleFragmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$8;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$8;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$8;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->b(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/model/Comment;->newComment(II)Lcom/naver/glink/android/sdk/model/Comment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/model/Comment;Z)V

    return-void
.end method
