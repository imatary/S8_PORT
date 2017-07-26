.class Lcom/naver/glink/android/sdk/ui/profile/a$3;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "NickNameHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/a;->a(Ljava/lang/String;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$JoinResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/a$3;->a:Lcom/naver/glink/android/sdk/ui/profile/a;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$JoinResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a$3;->a:Lcom/naver/glink/android/sdk/ui/profile/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/a;->b(Lcom/naver/glink/android/sdk/ui/profile/a;)Lcom/naver/glink/android/sdk/ui/profile/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/naver/glink/android/sdk/ui/profile/a$a;->a(Lcom/naver/glink/android/sdk/api/Response;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$JoinResponse;Lcom/android/volley/VolleyError;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$JoinResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GlinkError;->isGeneralError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a$3;->a:Lcom/naver/glink/android/sdk/ui/profile/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/a;->b(Lcom/naver/glink/android/sdk/ui/profile/a;)Lcom/naver/glink/android/sdk/ui/profile/a$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/naver/glink/android/sdk/ui/profile/a$a;->a(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$JoinResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/profile/a$3;->a(Lcom/naver/glink/android/sdk/api/Responses$JoinResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$JoinResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/a$3;->a(Lcom/naver/glink/android/sdk/api/Responses$JoinResponse;)V

    return-void
.end method
