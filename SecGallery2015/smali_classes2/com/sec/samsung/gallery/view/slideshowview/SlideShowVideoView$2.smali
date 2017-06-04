.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$2;
.super Ljava/lang/Object;
.source "SlideShowVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    const/4 v1, 0x1

    # invokes: Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->stopVideoPlayAfter3Sec(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;Z)V

    return-void
.end method
