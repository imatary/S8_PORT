.class public Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;
.super Landroid/app/Activity;
.source "NeoIdInAppBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;,
        Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$a;,
        Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$d;,
        Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field final b:Landroid/webkit/DownloadListener;

.field private c:Landroid/content/Context;

.field private d:[B

.field private e:[B

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/webkit/WebView;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$2;-><init>(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->b:Landroid/webkit/DownloadListener;

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a()V
    .locals 3

    iput-object p0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_token_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->k:Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "finish_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->m:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->n:Z

    return p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->l:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    return-object v0
.end method

.method private b()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0, v4}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->requestWindowFeature(I)Z

    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->d:[B

    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->e:[B

    new-instance v0, Landroid/widget/ProgressBar;

    const v1, 0x1010078

    invoke-direct {v0, p0, v7, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->h:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->h:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x5

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->h:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->h:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$b;-><init>(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$a;

    invoke-direct {v1, p0, v7}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$a;-><init>(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->b:Landroid/webkit/DownloadListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/login/neoid/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->f:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->f:Landroid/widget/ImageView;

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_btn_login_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->f:Landroid/widget/ImageView;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->j:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->i:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity$1;-><init>(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->k:Z

    return v0
.end method

.method private d()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->d()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->a(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->d()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a()V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->b()V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->c()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->m:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iput-object v2, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->d:[B

    iput-object v2, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->e:[B

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v2, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v2, "PlugSchemeActivity.ACTION_LOGIN_FINISH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->finish()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1ccad11a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method
