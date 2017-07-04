.class Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;
.super Ljava/lang/Object;
.source "GalleryPreviewViewGroup.java"

# interfaces
.implements Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControlInterface;


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

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pause_player()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "terminating instead of pausing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$800(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$800(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->stop()V

    :cond_0
    return-void
.end method

.method public start_play()I
    .locals 5

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v3}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$500(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v3, "HighlightVideoAnalyser"

    const-string/jumbo v4, "PVG:start Play"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v3}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$500(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/VideoEditor;->getCurrentPlayPosition()I

    move-result v2

    int-to-long v0, v2

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v2}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->play(J)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public stop_play()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "previewStopFromOutside"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$800(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$800(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$5;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$000(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/sec/android/app/ve/PreviewPlayerInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->stop()V

    const-string/jumbo v0, "HighlightVideoAnalyser"

    const-string/jumbo v1, "Player Paused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
