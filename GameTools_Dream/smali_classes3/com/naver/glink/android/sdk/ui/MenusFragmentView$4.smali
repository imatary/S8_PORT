.class Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "MenusFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->a()V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getCafeResponse()Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    :goto_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$b;->a(Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->f()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->cafe_infos:I

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getCafeResponse()Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    goto :goto_1
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Lcom/naver/glink/android/sdk/api/Response;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;->a(Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$4;->a(Lcom/naver/glink/android/sdk/api/Responses$MenusResponse;)V

    return-void
.end method
