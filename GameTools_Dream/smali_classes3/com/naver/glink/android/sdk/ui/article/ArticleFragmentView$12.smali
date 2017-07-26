.class Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$12;
.super Ljava/lang/Object;
.source "ArticleFragmentView.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$12;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$12;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->d()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$12;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Z)V

    return-void
.end method
