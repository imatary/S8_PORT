.class Lcom/naver/glink/android/sdk/ui/MenusFragmentView$2;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "MenusFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->a(Lcom/naver/glink/android/sdk/api/Responses$Channel;)V
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
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/MenusFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->MENU:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->setClickedMenuId(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->c()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->j()V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/MenusFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/api/Response;->showErrorToast(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Response;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$2;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/MenusFragmentView$2;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    return-void
.end method
