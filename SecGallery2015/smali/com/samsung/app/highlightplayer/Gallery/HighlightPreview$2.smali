.class Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;
.super Ljava/lang/Object;
.source "HighlightPreview.java"

# interfaces
.implements Lcom/samsung/app/highlightplayer/fragment/HighlightWorker$HighlightWorkerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;


# direct methods
.method constructor <init>(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bgWorkFinished()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$200(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->getThemeTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$200(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->getThemeTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$300(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$TranscodeElementUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$300(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$TranscodeElementUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$TranscodeElementUpdateListener;->updateStarted()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$400(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$400(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-static {v1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$200(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/highlightplayer/fragment/HighlightWorker;->getThemeTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->setTranscodeElement(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$400(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->start_play()I

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$300(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$TranscodeElementUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$2;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-static {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$300(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$TranscodeElementUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$TranscodeElementUpdateListener;->updateFinished()V

    goto :goto_0
.end method

.method public bgWorkStarted()V
    .locals 0

    return-void
.end method
