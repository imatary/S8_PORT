.class Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "ProfileMainFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Lcom/android/volley/VolleyError;)V
    .locals 3

    const/16 v2, 0x8

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    sget v1, Lcom/naver/glink/android/sdk/R$string;->network_error:I

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GlinkError;->isPendingJoinError()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->i()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    sget v2, Lcom/naver/glink/android/sdk/R$string;->waiting_join_apply_message:I

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GlinkError;->isNeedJoinError()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GlinkError;->isAgreeTermsError()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->i()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->f(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GlinkError;->isLoginError()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->logout(Landroid/content/Context;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->i()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->f(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->l(Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public b(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->i()V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->a(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->b(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileMainFragmentView$5;->a(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)V

    return-void
.end method
