.class public Lcom/naver/glink/android/sdk/ui/main/b;
.super Ljava/lang/Object;
.source "MainHelper.java"


# static fields
.field private static final a:Ljava/lang/String; = "plug.sdk.main"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/main/b$1;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/main/b$1;-><init>()V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/main/b;->a(Lcom/naver/glink/android/sdk/StartTo;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    move-result-object v1

    const-string/jumbo v2, "plug.sdk.main"

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    const-string/jumbo v1, "plug.sdk.main"

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a()V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->i()Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/naver/glink/android/sdk/StartTo;)V
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/main/b$2;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/main/b$2;-><init>(Lcom/naver/glink/android/sdk/StartTo;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->i()Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->setFullscreenVideoView(Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->i()Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->a(Z)V

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/main/b;->a(Lcom/naver/glink/android/sdk/StartTo;)V

    return-void
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->i()Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->getCollapsed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->i()Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->c()V

    :cond_0
    return-void
.end method

.method public static e()V
    .locals 6

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->k()Lcom/naver/glink/android/sdk/ui/main/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/naver/glink/android/sdk/ui/main/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/naver/glink/android/sdk/ui/main/a;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/naver/glink/android/sdk/ui/main/a;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/main/b$3;

    invoke-direct {v2, v0}, Lcom/naver/glink/android/sdk/ui/main/b$3;-><init>(Lcom/naver/glink/android/sdk/ui/main/a;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->k()V

    :cond_1
    return-void
.end method

.method public static f()V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->forChannelsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/main/b$4;

    invoke-direct {v2}, Lcom/naver/glink/android/sdk/ui/main/b$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    :cond_0
    return-void
.end method

.method public static g()V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->k()Lcom/naver/glink/android/sdk/ui/main/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/main/a;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static h()V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->k()Lcom/naver/glink/android/sdk/ui/main/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/main/a;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static i()Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v0

    const-string/jumbo v1, "plug.sdk.main"

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    return-object v0
.end method

.method static synthetic j()Lcom/naver/glink/android/sdk/ui/main/a;
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->k()Lcom/naver/glink/android/sdk/ui/main/a;

    move-result-object v0

    return-object v0
.end method

.method private static k()Lcom/naver/glink/android/sdk/ui/main/a;
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->i()Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->b:Lcom/naver/glink/android/sdk/ui/main/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
