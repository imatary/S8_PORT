.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$2;
.super Ljava/lang/Object;
.source "SlideShowPresentationVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->access$600(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;Z)V

    return-void
.end method
