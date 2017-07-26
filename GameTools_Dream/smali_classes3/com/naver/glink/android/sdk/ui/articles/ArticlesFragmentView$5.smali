.class Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5;
.super Lcom/naver/glink/android/sdk/a/o;
.source "ArticlesFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)V
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->c(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)I

    move-result v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5$1;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5$1;-><init>(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$5;)V

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/articles/c;->a(Landroid/content/Context;ILcom/naver/glink/android/sdk/ui/articles/c$a;)V

    return-void
.end method
