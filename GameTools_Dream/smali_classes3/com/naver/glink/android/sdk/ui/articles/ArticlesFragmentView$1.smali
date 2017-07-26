.class Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$1;
.super Ljava/lang/Object;
.source "ArticlesFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/articles/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Lcom/android/volley/VolleyError;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-virtual {v0, p2}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/api/Response;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->f()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->b(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0
.end method
