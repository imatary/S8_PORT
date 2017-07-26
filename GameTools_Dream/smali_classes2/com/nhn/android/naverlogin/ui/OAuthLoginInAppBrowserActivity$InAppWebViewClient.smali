.class Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "OAuthLoginInAppBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InAppWebViewClient"
.end annotation


# instance fields
.field private preUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->preUrl:Ljava/lang/String;

    return-void
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

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$0(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$0(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[star] pre url : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->preUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[star]     url : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->preUrl:Ljava/lang/String;

    invoke-static {v3, v0, p2}, Lcom/nhn/android/naverlogin/ui/OAuthWebviewUrlUtil;->isFinalUrl(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$1(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$2(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->preUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v2}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$3(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    move-result-object v2

    invoke-static {v0, v1, p2, v2}, Lcom/nhn/android/naverlogin/ui/OAuthWebviewUrlUtil;->returnWhenAuthorizationDone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nhn/android/naverlogin/data/OAuthLoginData;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$1(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$0(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$0(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$0(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$0(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    sget-boolean v2, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[over] pre url : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->preUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[over]     url : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->preUrl:Ljava/lang/String;

    invoke-static {v5, v2, p2}, Lcom/nhn/android/naverlogin/ui/OAuthWebviewUrlUtil;->isFinalUrl(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v2}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$1(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-virtual {v2}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->finish()V

    :cond_1
    :goto_0
    return v5

    :cond_2
    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v2}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$2(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->preUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v4}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$3(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    move-result-object v4

    invoke-static {v2, v3, p2, v4}, Lcom/nhn/android/naverlogin/ui/OAuthWebviewUrlUtil;->returnWhenAuthorizationDone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nhn/android/naverlogin/data/OAuthLoginData;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v2, p2}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$4(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-virtual {v2, v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;->preUrl:Ljava/lang/String;

    goto :goto_0
.end method
