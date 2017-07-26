.class Lcom/github/rtoshiro/view/video/FullscreenVideoView$1;
.super Ljava/lang/Object;
.source "FullscreenVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rtoshiro/view/video/FullscreenVideoView;->setFullscreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/github/rtoshiro/view/video/FullscreenVideoView;


# direct methods
.method constructor <init>(Lcom/github/rtoshiro/view/video/FullscreenVideoView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$1;->b:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    iput-boolean p2, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$1;->b:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    iget-object v0, v0, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoView$1;->b:Lcom/github/rtoshiro/view/video/FullscreenVideoView;

    invoke-virtual {v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->h()V

    :cond_0
    return-void
.end method
