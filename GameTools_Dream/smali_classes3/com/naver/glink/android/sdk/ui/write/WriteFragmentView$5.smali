.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$5;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "WriteFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;)Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->j(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/a;->a()V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$5;->a(Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$5;->a(Lcom/naver/glink/android/sdk/api/Responses$AttachAuthResponse;)V

    return-void
.end method
