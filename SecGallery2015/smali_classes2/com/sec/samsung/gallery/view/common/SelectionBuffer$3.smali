.class Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;
.super Ljava/lang/Object;
.source "SelectionBuffer.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/OnAddDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->initializeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->setNotifyOnChange(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # invokes: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->getTempMediaObject()Lcom/sec/android/gallery3d/data/MediaObject;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$300(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    const-string/jumbo v1, "SelectionBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAdd:add, Count= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    const-string/jumbo v1, "SelectionBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAdd:add finish, count ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$400(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;->setSelection(I)V

    return-void
.end method

.method public onDelete()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->setNotifyOnChange(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # invokes: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->getTempMediaObject()Lcom/sec/android/gallery3d/data/MediaObject;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$300(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    const-string/jumbo v1, "SelectionBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDelete:pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    const-string/jumbo v1, "SelectionBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDelete:remove finish, count ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$3;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    # getter for: Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->mSelectionItemListAdapter:Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->notifyDataSetChanged()V

    return-void
.end method
