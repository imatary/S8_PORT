.class Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2$1;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "WebViewArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$ArticleLikesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2$1;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$ArticleLikesResponse;)V
    .locals 5

    iget-boolean v0, p1, Lcom/naver/glink/android/sdk/api/Responses$ArticleLikesResponse;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2$1;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->f(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Landroid/webkit/WebView;

    move-result-object v0

    const-string/jumbo v1, "javascript:likeIt(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/naver/glink/android/sdk/api/Responses$ArticleLikesResponse;->returnValue:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$ArticleLikesResponse;Lcom/android/volley/VolleyError;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$ArticleLikesResponse;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2$1;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$ArticleLikesResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$ArticleLikesResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2$1;->a(Lcom/naver/glink/android/sdk/api/Responses$ArticleLikesResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$ArticleLikesResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$2$1;->a(Lcom/naver/glink/android/sdk/api/Responses$ArticleLikesResponse;)V

    return-void
.end method
