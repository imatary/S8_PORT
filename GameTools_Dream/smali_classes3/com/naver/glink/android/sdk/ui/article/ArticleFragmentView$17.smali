.class Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$17;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "ArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(ZZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$17;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$17;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$17;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->f()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$17;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$17;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$17;->a:Ljava/lang/Runnable;

    invoke-static {v0, v2, v2, v2, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;ZZZLjava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$17;->b:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Lcom/naver/glink/android/sdk/api/Response;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$17;->a(Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$17;->a(Lcom/naver/glink/android/sdk/api/GResponses$ArticleResponse;)V

    return-void
.end method
