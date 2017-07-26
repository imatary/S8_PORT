.class Lcom/naver/glink/android/sdk/samsung/a$3;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "SHomeFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/samsung/a;->c()V
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
.field final synthetic a:Lcom/naver/glink/android/sdk/samsung/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/samsung/a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/samsung/a$3;->a:Lcom/naver/glink/android/sdk/samsung/a;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a$3;->a:Lcom/naver/glink/android/sdk/samsung/a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/samsung/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a$3;->a:Lcom/naver/glink/android/sdk/samsung/a;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/samsung/a;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a$3;->a:Lcom/naver/glink/android/sdk/samsung/a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/samsung/a$3;->a:Lcom/naver/glink/android/sdk/samsung/a;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/samsung/a;->b(Lcom/naver/glink/android/sdk/samsung/a;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/naver/glink/android/sdk/samsung/a;->a(Lcom/naver/glink/android/sdk/samsung/a;Landroid/view/View;Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a$3;->a:Lcom/naver/glink/android/sdk/samsung/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/samsung/a;->c(Lcom/naver/glink/android/sdk/samsung/a;)Lcom/naver/glink/android/sdk/samsung/a$a;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/samsung/a$a;->a(IZ)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/samsung/a$3;->a:Lcom/naver/glink/android/sdk/samsung/a;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/samsung/a;->a(Lcom/naver/glink/android/sdk/api/Response;)V

    return-void
.end method

.method public b(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->i()V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/samsung/a$3;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/samsung/a$3;->b(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/samsung/a$3;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    return-void
.end method
