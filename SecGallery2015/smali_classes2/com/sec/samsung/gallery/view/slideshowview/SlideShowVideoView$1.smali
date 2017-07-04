.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$1;
.super Landroid/os/Handler;
.source "SlideShowVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->updateGLRootView(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$300(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$300(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
