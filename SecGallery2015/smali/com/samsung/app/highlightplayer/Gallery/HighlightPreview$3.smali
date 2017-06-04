.class Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$3;
.super Ljava/lang/Object;
.source "HighlightPreview.java"

# interfaces
.implements Lcom/samsung/app/highlightplayer/view/GalleryPreviewViewGroup$PlayerControl;


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

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$3;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onPlayed()V
    .locals 0

    return-void
.end method

.method public onSeeked(J)V
    .locals 0

    return-void
.end method

.method public onStopped()V
    .locals 0

    return-void
.end method

.method public playerError()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$3;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    # getter for: Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$100(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/app/highlightplayer/R$string;->popup_contents_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/ve/VEApp;->showToast(Landroid/content/Context;II)Landroid/widget/Toast;

    return-void
.end method
