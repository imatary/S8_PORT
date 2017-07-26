.class public Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;
.super Landroid/app/Activity;
.source "OAuthLoginInAppBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppBrowserJavascriptInterface;,
        Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebChromeClient;,
        Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;,
        Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$OAuthLoginInAppBrowserInIntentData;,
        Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$OAuthLoginInAppBrowserOutIntentData;
    }
.end annotation


# static fields
.field private static final INSTANCE_STATE_IS_VISIBLE_BANNER:Ljava/lang/String; = "isVisibleBanner"

.field private static final INSTANCE_STATE_WEBVIEW_RUN_ONLY_ONCE:Ljava/lang/String; = "IsLoginActivityStarted"

.field private static final TAG:Ljava/lang/String; = "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"


# instance fields
.field private drawableByteBottomBackGroundImg:[B

.field private drawableByteCloseBtnImg:[B

.field private mContext:Landroid/content/Context;

.field final mDefaultDownloadListener:Landroid/webkit/DownloadListener;

.field private mFixActivityPortrait:Z

.field private mImgCloseButton:Landroid/widget/ImageView;

.field private mImgSeperator:Landroid/widget/ImageView;

.field public mInOAuthUrl:Ljava/lang/String;

.field private mIsLoginActivityStarted:Z

.field private mNaverDownloadBanner:Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;

.field private mNaviBar:Landroid/widget/LinearLayout;

.field private mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

.field private mOAuthSdkVersion:Ljava/lang/String;

.field private mVisibleNaverAppDownloadBanner:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewContent:Ljava/lang/String;

.field private mWebviewProgressbar:Landroid/widget/ProgressBar;

.field private mWholeView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mIsLoginActivityStarted:Z

    iput-boolean v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mFixActivityPortrait:Z

    iput-boolean v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mVisibleNaverAppDownloadBanner:Z

    new-instance v0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$1;-><init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)V

    iput-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mDefaultDownloadListener:Landroid/webkit/DownloadListener;

    return-void
.end method

.method static synthetic access$0(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebviewProgressbar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Lcom/nhn/android/naverlogin/data/OAuthLoginData;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    return-object v0
.end method

.method static synthetic access$4(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->loadBrowser(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaviBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initIntentData()V
    .locals 7

    iput-object p0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "ClientId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "ClientCallbackUrl"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getBaseInstance()Lcom/nhn/android/naverlogin/util/DeviceAppInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/connection/NetworkState;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    new-instance v0, Lcom/nhn/android/naverlogin/connection/gen/OAuthQueryGenerator;

    invoke-direct {v0}, Lcom/nhn/android/naverlogin/connection/gen/OAuthQueryGenerator;-><init>()V

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mOAuthLoginData:Lcom/nhn/android/naverlogin/data/OAuthLoginData;

    invoke-virtual {v2}, Lcom/nhn/android/naverlogin/data/OAuthLoginData;->getInitState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/nhn/android/naverlogin/connection/gen/OAuthQueryGenerator;->generateRequestInitUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mInOAuthUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "oauth_sdk_version"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mOAuthSdkVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mOAuthSdkVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/nhn/android/naverlogin/util/OAuthLoginUiUtil;->isFixActivityPortrait(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mFixActivityPortrait:Z

    :cond_0
    return-void
.end method

.method private initSavedInstanceStateData(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "IsLoginActivityStarted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mIsLoginActivityStarted:Z

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_0
    const-string/jumbo v0, "SdkVersionCalledFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mOAuthSdkVersion:Ljava/lang/String;

    const-string/jumbo v0, "IsFixActivityPortrait"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mFixActivityPortrait:Z

    const-string/jumbo v0, "isVisibleBanner"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mVisibleNaverAppDownloadBanner:Z

    :cond_1
    return-void
.end method

.method private initView(Landroid/os/Bundle;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    invoke-virtual {p0, v12}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->requestWindowFeature(I)Z

    const-string/jumbo v5, "89504e470d0a1a0a0000000d494844520000000c0000003c0806000000520f5b4a0000000473424954080808087c08648800000093494441544889e596410e80200c0407d34f79f5e4ffbfe2454d00df3024252472eeb2bb6d692940479ccd0403c47e9c97025024c373bfca43b45a1d83ba1e08975408680ee0c221e84e93f6e05b434bf27590267ce1969494cda03d4c9094de4bbd39887f0f364b9a211f105dd661cad490b375a0f924404bcadf4033765cfab8cf9634d2adcb555a3f20ffd7f8e3dab569fd00dbc449301620f2800000000049454e44ae426082"

    invoke-static {v5}, Lcom/nhn/android/naverlogin/ui/OAuthLoginImage;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->drawableByteBottomBackGroundImg:[B

    const-string/jumbo v5, "89504e470d0a1a0a0000000d49484452000000260000002008060000007e640ab30000000473424954080808087c08648800000370494441545885ed97cd4beb4c14871fabb64d66504b5b53ad284a515044d18545f01f565444772a7e8b5f4b1515515cccee2e14d3b4a475bc0b5b69ec57d27b37efcbfd4116ed647e7966cee49c13f8a7ff893a5a8c77017d40b8fcdb055e8152c0e704f6e90c6056b9bfbb6cacdb84f2e513f263767c7cac2e2f2f55792c5c1eeb0a0a15c4a7512813d566524a7a7b7b01181d1d4d97ef69158e1aa8263ebf7e4e6eb4636180a3a3232584209148904824e8e9e9e1e5e5c5cf8a3d50151fcbb288c562f57c6ad408cc05585a5a4a472211bababa08854244a3514cd3e4f9f9b9199c07eae0e04099a68965590821d05ad3d1d1c1c8c848f58ed5a851283de64f4f4f4a4a89699a00388e836ddb8c8d8dfd0c2bd5f3f6f7f7959492818101a494944a5f518fc7e32d8f43b374e1817b7c7cac0b97c9647eae3c0cb0b7b7a7a494a452290f543299f4754603e5b1878787ba70e3e3e3e9ea49bbbbbb75a12ccbf2fbe2b404ab81bbbfbf57524a0cc300209fcf63db3613131369809d9d1d25a5c4b22ca4947c7c7c00904aa57c43f905ab81bbbbbb5342080f5c2e97e3eded0d804422e1811a1c1c0c041504ac06eef6f6560921104200502c16715d97502844381ca6582c0230343414182a28580ddcf5f5b58ac562df3b5791ebbab8aecbf0f0705b50d0388ff9d2ebeb2b854201ad75ddeb4f1404ccb35b5b5b5baaf270d77529140a140a055cf72b6b68adb9b9b969a7be026d1efecdcdcdef122384f84e0715452211e02b9de47239e6e6e60287d4cf8e79a03636369461182493490cc3c0755db4d664329974269349e772396cdb466b4d341ac5300caeaeae02ef5c2b300fd4fafa7a5da8ea043b3333937e7f7faf81bbb8b80804e7bb24adadad292104fdfdfd9ef04d4e4ed62d49e7e7e7ca344d4f95701c878585853f2a491ea8d5d555258420994c2284f84e9c5353534d8bf8d9d999324dd393881dc7219bcdb6846b14ca6ff3959515651806f1781cc33028168b68adeb4195cad76bf93fb2d96cdab66d1cc7416b4d2412c1300c4e4f4f7f86b5464d1bc5e5e565659a2695245a2a95f8fcfc647a7abad98a3d708b8b8b69dbb6c9e7f368ade9ececc4344d4e4e4e9a368a2d5bebeded6dd5d7d74777773700b3b3b36db5d6952e36140ad5f3a969ad7d9db1c3c3432584607e7e3e683e6adbc7f75b59a5a075af2d9f66df95ba3cb9bbeabe763e78ff96cf3ffd37f51b1081c17a70bcfc1a0000000049454e44ae426082"

    invoke-static {v5}, Lcom/nhn/android/naverlogin/ui/OAuthLoginImage;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->drawableByteCloseBtnImg:[B

    new-instance v5, Landroid/widget/ProgressBar;

    const v6, 0x1010078

    invoke-direct {v5, p0, v9, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebviewProgressbar:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebviewProgressbar:Landroid/widget/ProgressBar;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x5

    invoke-direct {v6, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebviewProgressbar:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebviewProgressbar:Landroid/widget/ProgressBar;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v12}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v12}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;

    invoke-direct {v6, p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebViewClient;-><init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebChromeClient;

    invoke-direct {v6, p0, v9}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebChromeClient;-><init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppWebChromeClient;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mDefaultDownloadListener:Landroid/webkit/DownloadListener;

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v6, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppBrowserJavascriptInterface;

    invoke-direct {v6, p0, p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$InAppBrowserJavascriptInterface;-><init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;Landroid/content/Context;)V

    const-string/jumbo v7, "AndroidLoginWebView"

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getBaseInstance()Lcom/nhn/android/naverlogin/util/DeviceAppInfo;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/nhn/android/naverlogin/util/DeviceAppInfo;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaviBar:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42200000    # 40.0f

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/nhn/android/naverlogin/ui/OAuthLoginImage;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaviBar:Landroid/widget/LinearLayout;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaviBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaviBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->drawableByteBottomBackGroundImg:[B

    iget-object v7, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->drawableByteBottomBackGroundImg:[B

    array-length v7, v7

    invoke-static {v6, v11, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaviBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mImgSeperator:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mImgSeperator:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/nhn/android/naverlogin/ui/OAuthLoginImage;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v6, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mImgSeperator:Landroid/widget/ImageView;

    const/16 v6, 0xff

    invoke-static {v6, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mImgSeperator:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mImgCloseButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mImgCloseButton:Landroid/widget/ImageView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-static {v5}, Lcom/nhn/android/naverlogin/ui/OAuthLoginImage;->getScreenWidth(Landroid/app/Activity;)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    const v8, 0x41aaaaab

    iget-object v9, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/nhn/android/naverlogin/ui/OAuthLoginImage;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v7, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->drawableByteCloseBtnImg:[B

    iget-object v7, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->drawableByteCloseBtnImg:[B

    array-length v7, v7

    invoke-static {v6, v11, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mImgCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mImgCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mImgCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaviBar:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mImgSeperator:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaviBar:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mImgCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-boolean v5, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->MARKET_LINK_WORKING:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mVisibleNaverAppDownloadBanner:Z

    if-eqz v5, :cond_0

    new-instance v5, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;

    invoke-direct {v5, p0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaverDownloadBanner:Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;

    :cond_0
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWholeView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWholeView:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWholeView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-boolean v5, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->MARKET_LINK_WORKING:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaverDownloadBanner:Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mVisibleNaverAppDownloadBanner:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWholeView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaverDownloadBanner:Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWholeView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebviewProgressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWholeView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWholeView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaviBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWholeView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaviBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private loadBrowser(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "about:blank"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "https://nid.naver.com"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "https://nid.naver.com/mobile/user/help/idInquiry.nhn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "https://nid.naver.com/mobile/user/help/pwInquiry.nhn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "https://nid.naver.com/user/mobile_join.nhn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "https://nid.naver.com/nidlogin.logout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "http://nid.naver.com/nidlogin.logout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "/sso/logout.nhn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "/sso/cross-domain.nhn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "/sso/finalize.nhn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "http://cc.naver.com"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "http://cr.naver.com"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "https://cert.vno.co.kr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "https://ipin.ok-name.co.kr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "https://ipin.siren24.com"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method private registerSizeChangeListener()V
    .locals 3

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWholeView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$2;-><init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private runOnlyOnce()V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "agreeFormUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v6, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mInOAuthUrl:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "agreeFormContent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebViewContent:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebViewContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "webview url -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mInOAuthUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mInOAuthUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "webview url -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mInOAuthUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "webview content -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebViewContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mInOAuthUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebViewContent:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mImgCloseButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->initIntentData()V

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->initSavedInstanceStateData(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->initView(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "webview onCreate() fix:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mFixActivityPortrait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mFixActivityPortrait:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->setRequestedOrientation(I)V

    :cond_1
    invoke-direct {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->registerSizeChangeListener()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    const-string/jumbo v1, "webview onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->drawableByteBottomBackGroundImg:[B

    iput-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->drawableByteCloseBtnImg:[B

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWholeView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWholeView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    const-string/jumbo v1, "webview onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->initSavedInstanceStateData(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "webview onRestoreInstanceState() first:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mIsLoginActivityStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sdk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mOAuthSdkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", fix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mFixActivityPortrait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    iget-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mIsLoginActivityStarted:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    const-string/jumbo v1, "webview onResume() first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mIsLoginActivityStarted:Z

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->runOnlyOnce()V

    :cond_2
    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    const-string/jumbo v1, "webview onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaverLoginOAuth|OAuthLoginInAppBrowserActivity"

    const-string/jumbo v1, "webview onSaveInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "IsLoginActivityStarted"

    iget-boolean v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mIsLoginActivityStarted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_1
    const-string/jumbo v0, "SdkVersionCalledFrom"

    iget-object v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mOAuthSdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "IsFixActivityPortrait"

    iget-boolean v1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mFixActivityPortrait:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mVisibleNaverAppDownloadBanner:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaverDownloadBanner:Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;->mNaverDownloadBanner:Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/ui/view/OAuthLoginLayoutNaverAppDownloadBanner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "isVisibleBanner"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "isVisibleBanner"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
