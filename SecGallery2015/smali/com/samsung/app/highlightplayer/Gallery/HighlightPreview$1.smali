.class Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$1;
.super Ljava/lang/Object;
.source "HighlightPreview.java"

# interfaces
.implements Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$GestureControl;


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

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$1;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceClick(J)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "eventid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$1;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-static {v3}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$000(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "currentSeekPosition"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.app.highlightplayer"

    const-string/jumbo v2, "com.samsung.app.highlightplayer.activity.HighlightPlayerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$1;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-static {v1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$100(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
