.class Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$b;
.super Landroid/webkit/WebChromeClient;
.source "WebViewArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

.field private b:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$b;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$b;->b:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->video_loading_progress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$b;->b:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$b;->b:Landroid/view/View;

    return-object v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 2

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    return v0
.end method

.method public onHideCustomView()V
    .locals 0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->d()V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 v0, 0x32

    if-le p2, v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->i()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->b(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Z)Z

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Z)V

    invoke-static {p1, p2}, Lcom/naver/glink/android/sdk/ui/main/b;->a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
