.class Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;
.super Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectRunnable;
.source "SelectionBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

.field final synthetic val$mediaObject:Lcom/sec/android/gallery3d/data/MediaObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;Lcom/sec/android/gallery3d/data/MediaObject;Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->val$mediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectRunnable;-><init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;Lcom/sec/android/gallery3d/data/MediaObject;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string/jumbo v2, "SelectionBuffer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add, pen select?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$000(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->setVisibility(IZ)V

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSelectionBufferVI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$000(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$000(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getIsGroupCheckBoxSelected()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->val$mediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

    # invokes: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->setTempMediaObject(Lcom/sec/android/gallery3d/data/MediaObject;)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$500(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;Lcom/sec/android/gallery3d/data/MediaObject;)V

    const-string/jumbo v2, "SelectionBuffer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add pos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$400(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;->setInsert(Ljava/util/ArrayList;)V

    const-string/jumbo v2, "SelectionBuffer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add finish :size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$400(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$4;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;->setSelection(I)V

    goto :goto_0
.end method
