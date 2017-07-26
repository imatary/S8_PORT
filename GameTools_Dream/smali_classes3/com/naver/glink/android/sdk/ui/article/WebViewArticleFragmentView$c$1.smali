.class Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c$1;
.super Ljava/lang/Object;
.source "WebViewArticleFragmentView.java"

# interfaces
.implements Landroid/webkit/WebView$FindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c$1;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindResultReceived(IIZ)V
    .locals 3

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c$1;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;

    iget v0, v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->c:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c$1;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c$1;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$LoggedInListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->login(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c$1;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;

    iget v1, v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->c:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c$1;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->f(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c$1;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;

    const/4 v1, 0x0

    iput v1, v0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->c:I

    goto :goto_0
.end method
