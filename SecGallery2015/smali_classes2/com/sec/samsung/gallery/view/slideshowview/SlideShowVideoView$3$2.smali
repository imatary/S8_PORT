.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$2;
.super Ljava/lang/Object;
.source "SlideShowVideoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$2;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$2;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$2;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setFinishVideoOnTouch(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$2;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    # getter for: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->ignoreActionBarHide()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3$2;->this$1:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    const/4 v1, 0x0

    # invokes: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->stopVideoPlayAfter3Sec(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;Z)V

    :cond_0
    return v2
.end method
