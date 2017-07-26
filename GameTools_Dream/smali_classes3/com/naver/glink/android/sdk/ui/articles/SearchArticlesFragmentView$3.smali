.class Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$3;
.super Ljava/lang/Object;
.source "SearchArticlesFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/articles/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->l()V
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/model/Menu;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->i(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuId()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Lcom/naver/glink/android/sdk/model/Menu;)Lcom/naver/glink/android/sdk/model/Menu;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->f(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->f(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/SearchArticlesFragmentView;Lcom/naver/glink/android/sdk/api/Responses$ArticlesResponse;Z)V

    goto :goto_0
.end method
