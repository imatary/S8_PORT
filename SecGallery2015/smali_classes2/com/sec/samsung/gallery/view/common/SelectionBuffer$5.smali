.class Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;
.super Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectsRunnable;
.source "SelectionBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->addAll(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$MediaObjectsRunnable;-><init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "SelectionBuffer"

    const-string/jumbo v1, "addAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$000(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getBufferAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    # invokes: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->setVisibility(IZJ)V
    invoke-static {v0, v4, v1, v2, v3}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$600(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;IZJ)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$000(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setBufferAnimation(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;->mMediaObjects:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->addAll(Ljava/util/Collection;)V

    const-string/jumbo v0, "SelectionBuffer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addAll:finish:size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$400(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;->setSelection(I)V

    const-string/jumbo v0, "SelectionBuffer"

    const-string/jumbo v1, "setSelection finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$5;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-virtual {v0, v4, v4}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->setVisibility(IZ)V

    goto :goto_0
.end method
