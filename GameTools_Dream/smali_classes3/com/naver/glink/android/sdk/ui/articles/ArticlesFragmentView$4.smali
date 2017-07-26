.class Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "ArticlesFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->e(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    move-result-object v0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->NOTICE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    iget v1, p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->noticeMenuId:I

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;I)I

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->e(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    move-result-object v0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->EVENT:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    iget v1, p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->eventMenuId:I

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;I)I

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->c(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    sget v1, Lcom/naver/glink/android/sdk/R$string;->no_menu_setting_message:I

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->b(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->d(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/articles/a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->c(Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(IZ)V

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/api/Response;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/articles/ArticlesFragmentView$4;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    return-void
.end method
