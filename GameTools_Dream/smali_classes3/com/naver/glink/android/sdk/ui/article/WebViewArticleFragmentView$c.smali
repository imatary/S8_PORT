.class Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;
.super Landroid/webkit/WebViewClient;
.source "WebViewArticleFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "\"error_code\":\"024\""


# instance fields
.field b:I

.field c:I

.field final synthetic d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;


# direct methods
.method private constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->b:I

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x2

    const/4 v0, -0x1

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getCafeResponse()Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://(m.)?cafe.naver.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/Responses$CafeResponse;->cafeUrl:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/(\\d+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-lt v2, v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->i()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v0, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->b(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Z)Z

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->f()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->f(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c$1;-><init>(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    const-string/jumbo v0, "\"error_code\":\"024\""

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->i(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    sget v1, Lcom/naver/glink/android/sdk/R$string;->network_error:I

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->b(I)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->b:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->h(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->h()V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->b:I

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "glink://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-static {p2}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->a(Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;Landroid/net/Uri;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "http://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p2}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/naver/glink/android/sdk/a/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->b(I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/naver/glink/android/sdk/a/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "intent://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView$c;->d:Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/article/WebViewArticleFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/naver/glink/android/sdk/a/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method
