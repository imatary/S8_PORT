.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "WriteFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->c()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a(Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->write_permission_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;)Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;Lcom/android/volley/VolleyError;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    sget v2, Lcom/naver/glink/android/sdk/R$string;->internet_not_connected_error:I

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GlinkError;->isNeedJoinError()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21$1;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21$1;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;)V

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21$2;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21$2;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;)V

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->b(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)V

    goto :goto_0
.end method

.method a(Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->getMenu(I)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;Lcom/android/volley/VolleyError;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-direct {v1, v2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;)Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->f(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->f(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a(Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onFinally(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->b(Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$21;->a(Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;)V

    return-void
.end method
