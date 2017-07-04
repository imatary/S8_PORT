.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$3;
.super Landroid/os/Handler;
.source "SlideShowPresentationVideoView.java"


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
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "ACTION_ADD_GLSURFACE_VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$700(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "ACTION_REMOVE_PRESENTATION_VIDEO_VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$700(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "BroadCast send"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "handleMessage STOP_AFTER_3_SEC "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$600(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$3;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

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
