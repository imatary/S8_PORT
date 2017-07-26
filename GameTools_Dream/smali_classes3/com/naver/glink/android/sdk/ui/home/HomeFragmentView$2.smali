.class Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$2;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "HomeFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->f()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a(Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView;->a(Lcom/naver/glink/android/sdk/api/Response;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$2;->a(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/home/HomeFragmentView$2;->a(Lcom/naver/glink/android/sdk/api/Responses$HomeResponse;)V

    return-void
.end method
