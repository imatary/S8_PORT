.class Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$2;
.super Ljava/lang/Object;
.source "GalleryPreviewViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$2;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/samsung/app/highlightplayer/R$id;->previewplayBtn:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$2;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v2}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$200(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "HighlightVideoAnalyser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "On Click of play button in gallery with player state as: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$2;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v4}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$300(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$2;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v2}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$300(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;->completed:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$HighlightPlayerState;

    if-ne v2, v3, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    const-string/jumbo v2, "HighlightVideoAnalyser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Highlight player launch time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$2;->this$0:Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;

    invoke-static {v2}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;->access$200(Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup;)Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;->onSurfaceClick(J)V

    :cond_0
    return-void

    :cond_1
    sget-object v2, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/VideoEditor;->getCurrentPlayPosition()I

    move-result v2

    int-to-long v0, v2

    goto :goto_0
.end method
