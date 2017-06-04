.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;
.super Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;
.source "PhotoSplitViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionTask"
.end annotation


# instance fields
.field private final mCurrentSelectedCount:I

.field private final mMaxAddCount:I

.field private final mMaxPickCount:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;Landroid/content/DialogInterface$OnCancelListener;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-direct {p0, p2, p3, p4, p7}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;Landroid/content/DialogInterface$OnCancelListener;I)V

    iput p5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->mMaxAddCount:I

    iput p6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->mCurrentSelectedCount:I

    iput p8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->mMaxPickCount:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->mMaxAddCount:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->mCurrentSelectedCount:I

    iget v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->mMaxPickCount:I

    move-object v4, p0

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectItemPickMode(Lcom/sec/android/gallery3d/data/MediaSet;IILcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;I)V
    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$3000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Lcom/sec/android/gallery3d/data/MediaSet;IILcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;I)V

    :goto_0
    return-object v6

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->misFilteredForStoryAlbum:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectItemFilterMode(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;)V
    invoke-static {v0, v1, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$3100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inNewAlbumMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectItemNewAlbumMode(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;)V
    invoke-static {v0, v1, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$3200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;

    goto :goto_0
.end method
