.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;
.super Ljava/lang/Object;
.source "MoreInfoItemTagsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->setDeleteBtn(ILandroid/view/View;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processDelete()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mDeleteList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mAddList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$700(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mAddList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$700(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mDataset:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->addNoTag()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$800(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$900(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$900(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->isEdited()Z
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$1000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;->onEdit(Z)V

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->notifyDirty()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->access$1100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$2;->processDelete()V

    return-void
.end method
