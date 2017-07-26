.class Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;
.super Landroid/webkit/WebViewClient;
.source "NeoIdInAppBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 5

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    move v0, v1

    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v4, "market"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "glink"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-virtual {v2, v1}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_1
    move v1, v2

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/naver/glink/android/sdk/b;->c()V

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "join"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :sswitch_3
    const-string/jumbo v1, "openUrl"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_2

    :pswitch_3
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v2, v1}, Lcom/naver/glink/android/sdk/a/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x40736bc4 -> :sswitch_0
        0x5de24e1 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4b4af53b -> :sswitch_3
        0x31dd2a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1, p2}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->b(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->c(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->d(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {p2}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;Z)Z

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->b:Ljava/lang/String;

    invoke-static {v0, v4, v1, p2}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->b(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->c(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->d(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)V

    :cond_0
    :goto_1
    return v4

    :cond_1
    invoke-static {p2}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0, v4}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;Z)Z

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p2}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a(Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "Referer"

    iget-object v2, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    iput-object p2, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;->b:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method
