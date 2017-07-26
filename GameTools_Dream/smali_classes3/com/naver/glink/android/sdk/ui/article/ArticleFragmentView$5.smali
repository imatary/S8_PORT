.class Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$5;
.super Ljava/lang/Object;
.source "ArticleFragmentView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->contents_edit:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->h(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    move-result-object v1

    iget v1, v1, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->articleId:I

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/b;->a(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->contents_delete:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->h(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    move-result-object v2

    iget v2, v2, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;->articleId:I

    invoke-static {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/article/b;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;IZ)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->contents_report:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v0, v3}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Z)V

    goto :goto_0
.end method
