.class Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$4;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "ProfileMainFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->c()V
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
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->k(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->a(Lcom/naver/glink/android/sdk/api/Response;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$4;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$4;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    return-void
.end method
