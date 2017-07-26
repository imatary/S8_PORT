.class Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$5;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "CommentFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->a(Lcom/naver/glink/android/sdk/model/Comment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/model/Comment;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;Lcom/naver/glink/android/sdk/model/Comment;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$5;->b:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$5;->a:Lcom/naver/glink/android/sdk/model/Comment;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;)V
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$5;->b:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->d(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;)Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$5;->a:Lcom/naver/glink/android/sdk/model/Comment;

    invoke-direct {v0, v1, v2, p1}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$b;-><init>(Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$From;Lcom/naver/glink/android/sdk/model/Comment;Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$5;->a:Lcom/naver/glink/android/sdk/model/Comment;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/model/Comment;->isNewComment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$5;->a:Lcom/naver/glink/android/sdk/model/Comment;

    iget v0, v0, Lcom/naver/glink/android/sdk/model/Comment;->articleId:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/b;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;Lcom/android/volley/VolleyError;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$5;->b:Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$5;->a(Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/CommentFragmentView$5;->a(Lcom/naver/glink/android/sdk/api/Responses$CommentSaveResponse;)V

    return-void
.end method
