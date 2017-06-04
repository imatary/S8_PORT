.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$34;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/detailview/util/VisionLoadUserRoiTask$VisionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->onStateResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$34;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidForUserRoi()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$34;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$34;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalImage;->setSceneCropRectFs()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$34;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$34;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->updateVisionIntelligenceView(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$34;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$34;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$34;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/UnionImage;->setSceneCropRectFs()V

    goto :goto_0
.end method
