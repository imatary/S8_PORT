.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$8;
.super Ljava/lang/Object;
.source "PhotoSplitViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectAllProcessTask(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionTask:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$2800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionTask:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$2800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$2900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/data/OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$2900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/data/OnProgressListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onCompleted(Z)V

    :cond_0
    return-void
.end method
