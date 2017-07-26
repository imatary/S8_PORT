.class public Lcom/github/rtoshiro/view/video/FullscreenVideoView;
.super Landroid/widget/RelativeLayout;
.source "FullscreenVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FullscreenVideoView"


# instance fields
.field protected A:I

.field protected B:Ljava/lang/String;

.field protected C:Landroid/net/Uri;

.field protected D:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field protected E:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected F:Landroid/media/MediaPlayer$OnErrorListener;

.field protected G:Landroid/media/MediaPlayer$OnInfoListener;

.field protected H:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected I:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field protected J:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field protected j:Landroid/content/Context;

.field protected k:Landroid/app/Activity;

.field protected l:Landroid/media/MediaPlayer;

.field protected m:Landroid/view/SurfaceHolder;

.field protected n:Landroid/view/SurfaceView;

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

.field protected s:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

.field protected t:Landroid/view/View;

.field protected u:Landroid/view/ViewGroup;

.field protected v:Landroid/view/ViewGroup$LayoutParams;

.field protected w:Z

.field protected x:Z

.field protected y:I

.field protected z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->j:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->j:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->j:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->x:Z

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->IDLE:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-boolean v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->w:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->y:I

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->b()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    const-string/jumbo v0, "FullscreenVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekTo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->s:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->i()V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->p()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b()V
    .locals 5

    const/16 v4, 0xd

    const/4 v3, -0x1

    const/4 v2, -0x2

    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "initObjects"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->n:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->n:Landroid/view/SurfaceView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->n:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->n:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->m:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->n:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->m:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->m:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->m:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_2
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    if-nez v0, :cond_3

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    :cond_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->IDLE:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    return-void
.end method

.method protected c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->m:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->m:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->m:Landroid/view/SurfaceHolder;

    :cond_0
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->n:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->n:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->n:Landroid/view/SurfaceView;

    :cond_2
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->removeView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method protected g()V
    .locals 2

    iget-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->p:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->z:I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->A:I

    :cond_0
    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->s()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->q()V

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PREPARED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iget-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->x:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->h()V

    :cond_1
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->H:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->H:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_2
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized getCurrentState()Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDuration()I
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVideoHeight()I
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVideoWidth()I
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->STARTED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PAUSED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->c()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->b()V

    return-void
.end method

.method public k()V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->STOPPED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected o()V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->o:Z

    iput v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->A:I

    iput v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->z:I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PREPARING:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->END:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->b()V

    :try_start_0
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->B:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->B:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->setVideoPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->C:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->C:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->setVideoURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FullscreenVideoView"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3

    const-string/jumbo v0, "FullscreenVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBufferingUpdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->D:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->D:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->ERROR:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PLAYBACKCOMPLETED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->E:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->E:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->h()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "FullscreenVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetachedFromWindow - detachedByFullscreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->c()V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v3, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    :cond_0
    iput-boolean v4, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->o:Z

    iput-boolean v4, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->p:Z

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->END:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    :cond_1
    iput-boolean v4, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->q:Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const-string/jumbo v0, "FullscreenVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError called - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->q()V

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->ERROR:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->F:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->F:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const-string/jumbo v0, "FullscreenVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->G:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->G:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "onPrepared called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->o:Z

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "onSeekComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->q()V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->s:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$3;->a:[I

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->s:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    invoke-virtual {v1}, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->I:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->I:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->h()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PLAYBACKCOMPLETED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PREPARED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->s()V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    const-string/jumbo v0, "FullscreenVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoSizeChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->z:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->A:I

    if-nez v0, :cond_0

    iput p2, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->z:I

    iput p3, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->A:I

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->s()V

    :cond_0
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->J:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->J:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    :cond_1
    return-void
.end method

.method protected p()V
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected q()V
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->w:Z

    return v0
.end method

.method public s()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->A:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->z:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->n:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;

    invoke-direct {v1, p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView$2;-><init>(Lcom/github/rtoshiro/view/video/FullscreenVideoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->k:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->y:I

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->ERROR:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->w:Z

    if-ne v0, p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->w:Z

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->i()V

    :cond_3
    iget-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->w:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->k:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->k:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->plug_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->u:Landroid/view/ViewGroup;

    if-nez v4, :cond_5

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->u:Landroid/view/ViewGroup;

    :cond_5
    iput-boolean v2, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->q:Z

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->v:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_1
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->s()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$1;

    invoke-direct {v1, p0, v3}, Lcom/github/rtoshiro/view/video/FullscreenVideoView$1;-><init>(Lcom/github/rtoshiro/view/video/FullscreenVideoView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v2, "Parent View is not a ViewGroup"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "RootView is not a ViewGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->k:Landroid/app/Activity;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->k:Landroid/app/Activity;

    iget v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->y:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_a
    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->u:Landroid/view/ViewGroup;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->u:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_b

    iput-boolean v2, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->q:Z

    move v1, v2

    :cond_b
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->v:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public setLooping(Z)V
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->D:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->E:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->F:Landroid/media/MediaPlayer$OnErrorListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->G:Landroid/media/MediaPlayer$OnInfoListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->H:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnProgressView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->t:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->I:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->J:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShouldAutoplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->x:Z

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->IDLE:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FullscreenVideoView Invalid State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->B:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->C:Landroid/net/Uri;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->INITIALIZED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->o()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->IDLE:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FullscreenVideoView Invalid State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->C:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->INITIALIZED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->o()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVolume(FF)V
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "surfaceChanged called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->s()V

    return-void
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "FullscreenVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceCreated called = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->m:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->p:Z

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PREPARED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PAUSED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->STARTED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PLAYBACKCOMPLETED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoView"

    const-string/jumbo v1, "surfaceDestroyed called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->p:Z

    return-void
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->x:Z

    return v0
.end method

.method public u()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->setFullscreen(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public w()Z
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Media Player is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
