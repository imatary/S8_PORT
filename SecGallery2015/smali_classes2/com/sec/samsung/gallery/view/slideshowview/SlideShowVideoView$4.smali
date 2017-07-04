.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$4;
.super Ljava/lang/Object;
.source "SlideShowVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$4;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$4;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$4;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->updateGLRootView(Z)V

    :cond_0
    return v1
.end method
