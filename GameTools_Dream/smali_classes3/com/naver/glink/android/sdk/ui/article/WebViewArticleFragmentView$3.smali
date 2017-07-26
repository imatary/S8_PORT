.class Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$3;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "WebViewArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/Responses$CommentsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/Responses$CommentsResponse;)V
    .locals 5

    iget-boolean v0, p1, Lcom/naver/glink/android/sdk/api/Responses$CommentsResponse;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->f(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Landroid/webkit/WebView;

    move-result-object v0

    const-string/jumbo v1, "javascript:listComments(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/naver/glink/android/sdk/api/Responses$CommentsResponse;->returnValue:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/Responses$CommentsResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$3;->a(Lcom/naver/glink/android/sdk/api/Responses$CommentsResponse;)V

    return-void
.end method
