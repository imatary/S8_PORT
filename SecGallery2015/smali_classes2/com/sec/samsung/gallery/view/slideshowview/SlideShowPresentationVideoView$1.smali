.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;
.super Ljava/lang/Object;
.source "SlideShowPresentationVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPrepared()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mVideoHeight:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$302(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;I)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mVideoWidth:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$402(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;I)I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mVideoWidth:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mVideoHeight:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$300(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$500(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
