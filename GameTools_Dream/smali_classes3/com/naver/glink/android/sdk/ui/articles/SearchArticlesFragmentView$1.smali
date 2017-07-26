.class Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$1;
.super Ljava/lang/Object;
.source "SearchArticlesFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/articles/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Lcom/android/volley/VolleyError;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-static {v0, p2}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;)Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->b(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/articles/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->c(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
