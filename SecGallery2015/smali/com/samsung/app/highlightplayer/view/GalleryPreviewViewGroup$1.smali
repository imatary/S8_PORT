.class Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;
.super Landroid/os/Handler;
.source "GalleryPreviewViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;


# direct methods
.method constructor <init>(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-virtual {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->start_play()I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$1;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$102(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;Z)Z

    goto :goto_0
.end method
