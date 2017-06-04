.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$33;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->onDeleteImage()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$33;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$33;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsBurstShotViewer:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$33;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$33;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mDeleteObject:Lcom/sec/android/gallery3d/data/MediaObject;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->deleteOneBurstShotItem(Lcom/sec/android/gallery3d/data/MediaObject;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$33;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$33;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mDeleteObject:Lcom/sec/android/gallery3d/data/MediaObject;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->deleteItem(Lcom/sec/android/gallery3d/data/MediaObject;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$20100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_0
.end method
