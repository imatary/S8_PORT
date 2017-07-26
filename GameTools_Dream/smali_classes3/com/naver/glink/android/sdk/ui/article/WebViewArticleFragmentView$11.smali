.class Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$11;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "WebViewArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->b(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$11;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$11;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$11;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;)Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$11;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$11;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;Lcom/android/volley/VolleyError;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$11;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v1

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$11;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$11;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    sget v2, Lcom/naver/glink/android/sdk/R$string;->retry_after_a_while_message:I

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$11;->a(Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$11;->a(Lcom/naver/glink/android/sdk/api/Responses$ArticleMetaDataResponse;)V

    return-void
.end method
