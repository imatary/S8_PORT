.class Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$2;
.super Ljava/lang/Object;
.source "ArticlesFragmentView.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->d(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/articles/a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->c(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(IZ)V

    return-void
.end method
