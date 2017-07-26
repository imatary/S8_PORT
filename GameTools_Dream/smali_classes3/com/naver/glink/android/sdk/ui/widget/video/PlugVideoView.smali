.class public Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;
.super Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;
.source "PlugVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView$a;
    }
.end annotation


# instance fields
.field private K:Ljava/lang/StringBuilder;

.field private L:Ljava/util/Formatter;

.field private M:Landroid/view/View;

.field private N:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView$a;

.field private O:Landroid/view/View$OnClickListener;

.field private P:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->P:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->K:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->K:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->L:Ljava/util/Formatter;

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    div-int/lit16 v0, p1, 0x3e8

    rem-int/lit8 v1, v0, 0x3c

    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    div-int/lit16 v0, v0, 0xe10

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->K:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->L:Ljava/util/Formatter;

    const-string/jumbo v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->L:Ljava/util/Formatter;

    const-string/jumbo v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setProgress(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->getDuration()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->b:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->e:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->f:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->b()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->video_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->M:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setOnVideoCloseClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->vcv_txt_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->n:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->n:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    return-void
.end method

.method protected f()V
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->getCurrentPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setProgress(I)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->onCompletion(Landroid/media/MediaPlayer;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->getDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setProgress(I)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->P:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setControlsToggleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->P:Z

    return-void
.end method

.method public setFullButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->N:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->N:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView$a;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView$a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->setFullscreen(Z)V

    :cond_1
    return-void
.end method

.method public setOnFullScreenListener(Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->N:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView$a;

    return-void
.end method

.method public setOnVideoCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->O:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->M:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->M:Landroid/view/View;

    if-nez p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->M:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
