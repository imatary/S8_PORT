.class Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$a;
.super Landroid/webkit/WebChromeClient;
.source "NeoIdInAppBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$a;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$a;-><init>(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$a;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$a;->a:Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
