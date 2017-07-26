.class Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "ProfileArticlesFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;)Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    move-result v1

    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->articles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;I)I

    const-string/jumbo v0, "L"

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->d(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;->totalCount:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0, v3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->d(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    move-result-object v0

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->articles:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->e(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->d(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->c()V

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0, v3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->b(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;I)I

    :cond_2
    const-string/jumbo v0, "W"

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->d(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;

    iget v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;->totalCount:I

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->c(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;I)I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->d(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->f()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->f()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "C"

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->d(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;

    iget v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;->totalCount:I

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->d(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;I)I

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "L"

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->d(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    iget-object v1, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;

    iget v1, v1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;->totalCount:I

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->e(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;I)I

    goto :goto_1
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;Lcom/android/volley/VolleyError;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/RequestListener;->onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/api/Response;)V

    return-void
.end method

.method public b(Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;Lcom/android/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->i()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->f(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a(Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->b(Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;->a(Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;)V

    return-void
.end method
