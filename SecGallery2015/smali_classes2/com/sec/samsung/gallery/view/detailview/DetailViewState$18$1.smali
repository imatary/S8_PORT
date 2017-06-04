.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$1;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->onPhotoChanged(ILcom/sec/android/gallery3d/data/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mVisionIntelligenceHelpPopup:Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$16500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/util/VisionIntelligenceHelpPopup;->show(Z)V

    return-void
.end method
