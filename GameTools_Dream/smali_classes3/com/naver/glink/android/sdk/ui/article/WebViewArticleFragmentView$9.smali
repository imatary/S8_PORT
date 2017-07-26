.class Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$9;
.super Ljava/lang/Object;
.source "WebViewArticleFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$9;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$9;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/16 v3, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$9;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    const-string/jumbo v2, "com.naver.glink.COMMENT_BACK_STACK"

    invoke-virtual {v0, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.naver.glink.COMMENT_BACK_STACK"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$9;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->c(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$9;->b:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->d(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method
