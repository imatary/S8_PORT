.class Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "HomeFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->c()V
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
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$1;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a(Lcom/naver/glink/android/sdk/api/Response;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$1;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$1;->a(Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;)V

    return-void
.end method
