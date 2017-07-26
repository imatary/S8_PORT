.class public Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;
.source "MainFragmentView.java"


# static fields
.field public static final a:Ljava/lang/String; = "com.naver.glink.ARG_START_TO"


# instance fields
.field b:Lcom/naver/glink/android/sdk/ui/main/a;

.field c:Lcom/naver/glink/android/sdk/ui/main/c;

.field private g:Lcom/naver/glink/android/sdk/StartTo;

.field private h:Z

.field private i:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/SurfaceView;
    .locals 3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->a(Landroid/view/ViewGroup;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_1
    return-object v1

    :cond_0
    instance-of v0, v1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    check-cast v1, Landroid/view/SurfaceView;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->j:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/StartTo;)Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.naver.glink.ARG_START_TO"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->i:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->i:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setFullscreen(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->i:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    :cond_0
    return-void
.end method

.method private setCollapsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->h:Z

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->setDialogVisible(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_main:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a()V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.naver.glink.ARG_START_TO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/StartTo;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->g:Lcom/naver/glink/android/sdk/StartTo;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/main/a;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/main/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->b:Lcom/naver/glink/android/sdk/ui/main/a;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->b:Lcom/naver/glink/android/sdk/ui/main/a;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/main/a;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/configure/c;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/main/c;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/main/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->c:Lcom/naver/glink/android/sdk/ui/main/c;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->c:Lcom/naver/glink/android/sdk/ui/main/c;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/main/c;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/configure/c;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->custom_view_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->j:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->g:Lcom/naver/glink/android/sdk/StartTo;

    invoke-static {v0, p1, v1}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Landroid/content/Context;Landroid/view/View;Lcom/naver/glink/android/sdk/StartTo;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->a(Landroid/view/ViewGroup;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->j:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    goto :goto_0
.end method

.method protected a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/c;->b()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v0, 0x1030002

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x1000400

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit8 v0, v0, 0x22

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/StartTo;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView$2;->a:[I

    iget-object v1, p1, Lcom/naver/glink/android/sdk/StartTo;->a:Lcom/naver/glink/android/sdk/StartTo$To;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/StartTo$To;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->setCollapsed(Z)V

    return-void

    :pswitch_0
    iget v0, p1, Lcom/naver/glink/android/sdk/StartTo;->d:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->b(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/StartTo;->e:Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    iget-boolean v1, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->h:Z

    invoke-static {v0, v2, v1}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;ZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->getWindowParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->a(II)V

    return-void

    :cond_0
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/c;->b()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->b()V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->i()V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/g;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->c()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->i:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->i()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->d()Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->e()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/c;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a()Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->e()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->c_()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/naver/glink/android/sdk/c;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->setCollapsed(Z)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/naver/glink/android/sdk/a/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public getCollapsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->h:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->onAttachedToWindow()V

    const-string/jumbo v0, "plug"

    const-string/jumbo v1, "plug plug onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->getWindowParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/c;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->onDetachedFromWindow()V

    const-string/jumbo v0, "plug"

    const-string/jumbo v1, "plug plug onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFullscreenVideoView(Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->i:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    return-void
.end method
