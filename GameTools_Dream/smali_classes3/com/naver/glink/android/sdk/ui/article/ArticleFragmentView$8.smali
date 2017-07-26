.class Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$8;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "ArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$8;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$8;->a:Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;

    invoke-direct {v1, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$a;-><init>(Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/ArticleFragmentView$8;->a(Lcom/naver/glink/android/sdk/api/GResponses$LikeCountResponse;)V

    return-void
.end method
