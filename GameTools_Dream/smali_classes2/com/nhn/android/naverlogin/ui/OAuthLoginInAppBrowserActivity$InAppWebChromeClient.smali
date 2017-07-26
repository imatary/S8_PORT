.class Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "OAuthLoginInAppBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InAppWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebChromeClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebChromeClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebChromeClient;-><init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebChromeClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$0(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebChromeClient;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->access$0(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
