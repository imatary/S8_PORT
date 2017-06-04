.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$3;
.super Ljava/lang/Object;
.source "PhotoSplitViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->update(Ljava/util/Observable;Ljava/lang/Object;)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$3;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSortByTypeChanaged(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$3;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->saveSortByState(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V
    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$3;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->forceReload()V

    return-void
.end method
